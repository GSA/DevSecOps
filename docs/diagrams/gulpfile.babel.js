import gulp from 'gulp';
import gutil from 'gulp-util';
import notifier from 'node-notifier';
import http from 'http';
import fs from 'fs';
import path from 'path';
import connect from 'connect';
import serveStatic from 'serve-static';
import Mustache from 'mustache';
import through from 'through2';
import browserify from 'browserify';
import source from 'vinyl-source-stream';
import buffer from 'vinyl-buffer';
import babelify from 'babelify';
import sass from 'gulp-sass';
import del from 'del';
import figlet from 'figlet';
import pkg from './package';
import browserSync from 'browser-sync';

// Create browserSync instance
//
const browserSyncInstance = browserSync.create();

/**
 * @name default
 * @description The default gulp task.
 * @param { function } done - Callback that signals the task is complete.
 */
gulp.task( 'default', ( done ) => {
  logData( `v${ pkg.version }`, pkg.name );
  logData( 'default', pkg.description );
  logName( 'default', done );
} );

/**
 * @name clean
 * @desc Deletes the public directory.
 * @return { stream } - A stream containing the deleted `public/` directory.
 */
gulp.task( 'clean', () => del( 'public' ) );

/**
 * @name copy:fonts
 * @desc Copies `uswds` fonts statically to public.
 * @return { stream } - A stream of copied font files.
 */
gulp.task( 'copy:fonts', () => {
  return gulp.src( ['node_modules/uswds/dist/fonts/**/*', 'node_modules/font-awesome/fonts/*'] )
    .pipe( gulp.dest( 'public/fonts' ) );
} );

/**
 * @name stylesheets
 * @desc Compiles the Sass files under `source/stylesheets`.
 * @return { stream } - A stream of compiled CSS files.
 */
gulp.task( 'stylesheets', [ 'copy:fonts' ], () => {

  return gulp.src( 'source/styles/render.scss' )
    .pipe( sass().on( 'error', sass.logError ) )
    .pipe( gulp.dest( 'public' ) )
    .pipe( browserSyncInstance.stream() );

} );

/**
 * @name javascript
 * @desc Bundles and transpiles the JavaScript files under `source/javascript`.
 * @return { stream } - A stream of bundled JavaScript files.
 */
gulp.task( 'javascript', () => {

  const bundler = browserify( {
    entries: 'source/javascript/start.js',
    debug: false,
    transform: [
      [
        babelify,
        {
          presets: [
            'env'
          ],
        }
      ],
    ]
  } );

  return bundler.bundle()
    .pipe( source( 'render.js' ) )
    .pipe( gulp.dest( 'public' ) );

} );

/**
 * @name render
 * @desc Creates the final HTML page for rendering the mermaid diagrams.
 * @see { @link stylesheets }
 * @see { @link javascript }
 * @return { stream } - A stream of rendered diagrams in HTML files.
 */
gulp.task( 'render', () => {

  const htmlTemplate = fs.readFileSync( 'source/html/render.html', 'utf-8' );

  return gulp.src( 'source/mermaid/**.mmd' )
    .pipe( renderMermaid( htmlTemplate ) )
    .pipe( gulp.dest( 'public' ) );

} );

/**
 * @name render:list
 * @desc Render a list of all the diagrams available under `source/mermaid`.
 * @see { @link render }
 * @param { function } done - Callback that signals the task is complete.
 */
gulp.task( 'render:list', [ 'render' ], ( done ) => {

  const htmlTemplate = fs.readFileSync( 'source/html/index.html', 'utf-8' );

  fs.readdir( 'source/mermaid', ( error, files ) => {

    let diagrams = files.map( ( file ) => {
      let content = fs.readFileSync('source/mermaid/' + file, 'utf-8');
      let metadata = content.split('\n').filter(function(line) {
	return line.match(/^%%/) !== null;
      }).reduce(function(memo, line) {
	let parts = line.replace(/^%%/, '').split(':').map(function(part) {
	  return part.trim();
	});
	memo[parts[0]] = parts[1];
	return memo;
      }, {});

      return {
        href: `${ path.basename( file, '.mmd' ) }.html`,
        name: metadata.title || "needs a title",
	description: metadata.description || "need a description"
      };
    } );

    var listView = Mustache.render( htmlTemplate, {
      'diagram-list': diagrams,
    } );

    fs.writeFile( './public/index.html', listView, ( error ) => {
      if ( ! error ) {
        browserSyncInstance.reload();
        done();
      }
    } );

  } );

} );

/**
 * @name server
 * @desc Runs a preview server for local development of mermaid diagrams.
 * @see { @link render:list }
 * @param { function } done - Callback that signals the task is complete.
 */
gulp.task( 'server', [ 'stylesheets', 'javascript', 'render:list' ], ( done ) => {

  var port = 1337;

  browserSyncInstance.init( {
    proxy: `localhost:${ port }`,
  } );

  gulp.watch( 'source/mermaid/*.mmd', [ 'render:list' ] )
    .on( 'change', ( event ) => {
      if ( 'deleted' === event.type ) {
        let renderedFileName = `${ path.basename( event.path, '.mmd' ) }.html`;
        let destFilePath = path.resolve( 'public', renderedFileName);
        del.sync( destFilePath );
      }
      browserSyncInstance.reload();
    } );
  gulp.watch( 'source/html/*.html', [ 'render:list' ] );
  gulp.watch( 'source/styles/**/*.scss', [ 'stylesheets' ] );
  gulp.watch( 'source/javascript/**/*.js', [ 'javascript' ] )
    .on( 'change', browserSyncInstance.reload );

  connect()
    .use( serveStatic( path.join( __dirname, '/public' ), { fallthrough: false } ) )
    .use( ( error, request, response, next ) => {
      if ( error ) {
        logError( 'server', `${ error.statusCode } ${ error.path }` );
      }
      next();
    } )
    .listen( port, () => {
      logName( 'server' );
      logMessage( 'server', `Site available at http://localhost:${ port }/` );
    } );

} );

/**
 * @name build
 * @desc Exports the compiled diagrams and pages into the public/ directory.
 * @param { function } done - Callback that signals the task is complete.
 */
gulp.task( 'build', [ 'stylesheets', 'javascript', 'render:list' ], ( done ) => {
  logMessage( 'build', 'Build complete.' );
  done();
} );

/**
 * @name notify
 * @desc Wrapper around node-notify.
 * @see { @link logError }
 * @see { @link logMessage }
 * @param { string } title - The title of the notification.
 * @param { string } message - The message fo the notification.
 */
const notify = ( title, message ) => {
  notifier.notify( {
    title: title,
    message: message,
    icon: 'scuttle-icon.jpg',
  } );
};

/**
 * @name logData
 * @desc Wrapper for gulp-util for logging task data.
 * @param { string } task - The name of the task.
 * @param { string } data - The data for the task.
 */
const logData = ( task, data ) => {
  gutil.log(
    gutil.colors.cyan( task ),
    gutil.colors.white( data )
  );
};

/**
 * @name logMessage
 * @desc Wrapper for gulp-util for logging task messages.
 * @param { string } task - The name of the task.
 * @param { string } message - The message for the task.
 */
const logMessage = ( task, message ) => {
  notify( task, message );
  gutil.log(
    gutil.colors.cyan( task ),
    gutil.colors.yellow( message )
  );
};

/**
 * @name logError
 * @desc Wrapper for gulp-util for logging task errors.
 * @param { string } task - The name of the task.
 * @param { string } message - The error message for the task.
 */
const logError = ( task, message ) => {
  gutil.log(
    gutil.colors.red( task ),
    gutil.colors.yellow( message )
  );
};

/**
 * @name logName
 * @desc Display the name of the project.
 * @param { string } task - The name of the task.
 * @param { function } done - A callback to run.
 */
const logName = ( task, done ) => {
  figlet( pkg.name, {
    font: `Isometric${ Math.floor( Math.random() * ( 4 - 1 + 1 ) ) + 1 }`,
  }, ( error, data ) => {
    if ( ! error ) {
      data.split( '\n' )
        .forEach( ( line ) => {
          logData( task, line );
        } );
      logData( task, '' );
    }
    if ( 'function' === typeof done ) {
      done();
    }
  } );
};

/**
 * @name renderMermaid
 * @desc Gulp plugin for rendering Mermaid diagrams within a Mustache template.
 * @param { string } template - The Mustache template.
 * @return { stream } - A node stream wrapped in through2.
 */
const renderMermaid = function ( template ) {

  const taskName = 'render-mermaid';
  const PluginError = gutil.PluginError;

  if ( ! template ) {
    throw new PluginError( taskName, 'Missing a Mustache template.' );
  }

  template = new Buffer( template );

  return through.obj( function ( file, encoding, callback )  {

    if ( file.isNull() ) {
      return callback( null, file );
    }

    let fileName = path.basename( file.path, '.mmd' );
    logMessage( taskName, `Processing ${ file.path }`);

    if ( file.isBuffer() ) {
      file.contents = new Buffer( Mustache.render( template.toString(), {
        'diagram-title': fileName,
        'diagram-contents': file.contents.toString(),
      } ) );

      file.path = path.join( path.dirname( file.path ), `${ fileName }.html` );
    }
    if ( file.isStream() ) {
      this.emit( 'error', new PluginError( taskName, 'Streaming not supported' ) );
      return callback( null, file );
    }

    callback( null, file );
  } );
};
