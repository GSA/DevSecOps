import mermaid from 'mermaid';
import * as svgPng from 'save-svg-as-png';

console.log( 'mermaid', mermaid.version() );

// TODO This is very ugly, but for now it renders. This SVG creation should be
// done in the build step.
let ss = document.getElementById( 'js-stage' );

let btn = document.getElementById( 'save-png-button' );
btn.addEventListener('click', function() {
  let svgList = ss.getElementsByTagName('svg');
  let options = {
    scale: 2,
    backgroundColor: '#ffffff',
  };
  if (svgList.length) {
    svgPng.saveSvgAsPng(svgList[0], document.title+'.png', options);
  }
});

mermaid.mermaidAPI.render(
  'js-stage',
  ss.textContent.replace(/\n/g, '\\n'),
  function ( c ) {
    ss.innerHTML = c;
  }
);
