# GSA DevSecOps [![CircleCI](https://circleci.com/gh/GSA/DevSecOps.svg?style=svg)](https://circleci.com/gh/GSA/DevSecOps)

GSA DevSecOps Information

This repo contains information related to DevSecOps at GSA. The code that has been previously located in this project has been split out into different locations. This repo will now only contain documentation and links to relevant DevSecOps information.

DevSecOps at GSA implements 1 AWS subaccount per VPC, per environment, per app:

1-1-1-1:
1 AWS account == 1 Environment == 1 VPC == 1 application

The recommended components are in the /modules directory.

You may wish to consult the following example repos for ideas or templates to deploy these modules:

* [GSA/devsecops-example-pipeline](https://github.com/GSA/devsecops-example-pipeline)
* [GSA/devsecops-example](https://github.com/GSA/devsecops-example)mple-test)

You must consult the documentation of the individual modules to verify that you are using the proper variables for each.