# GSA DevSecOps

GSA DevSecOps Information

This repo contains information related to DevSecOps at GSA. The code that has been previously located in this project has been split out into different locations. This repo will now only contain documentation and links to relevant DevSecOps information.

The plaform is called the GSA Readily Available Computing Environment (GRACE).
Named in honor of [Rear Admiral Grace Hopper](https://en.wikipedia.org/wiki/Grace_Hopper).

GRACE implements 1 AWS subaccount per VPC, per environment, per app:

1-1-1-1:
1 AWS account == 1 Environment == 1 VPC == 1 application

You may wish to consult the following example repos for ideas or templates to implement GRACE.

## Public ##
| Repository | Build Status |
| ---------- | ------------ |
| [GSA/grace-alerting](https://github.com/GSA/grace-alerting) | [![CircleCI](https://circleci.com/gh/GSA/grace-alerting.svg?style=svg)](https://circleci.com/gh/GSA/grace-alerting) |
| [GSA/grace-app](https://github.com/GSA/grace-app) | ![No Builds](images/na.svg) |
| [GSA/grace-circleci-builder](https://github.com/GSA/grace-circleci-builder) | [![CircleCI](https://circleci.com/gh/GSA/grace-circleci-builder.svg?style=svg)](https://circleci.com/gh/GSA/grace-circleci-builder) |
| [GSA/grace-citest](https://github.com/GSA/grace-citest) | [![CircleCI](https://circleci.com/gh/GSA/grace-citest.svg?style=svg)](https://circleci.com/gh/GSA/grace-citest) |
| [GSA/grace-cloudcustodian](https://github.com/GSA/grace-cloudcustodian) | [![CircleCI](https://circleci.com/gh/GSA/grace-cloudcustodian.svg?style=svg)](https://circleci.com/gh/GSA/grace-cloudcustodian) |
| [GSA/grace-config](https://github.com/GSA/grace-config) | [![CircleCI](https://circleci.com/gh/GSA/grace-config.svg?style=svg)](https://circleci.com/gh/GSA/grace-config) |
| [GSA/grace-config-differ](https://github.com/GSA/grace-config-differ) | [![CircleCI](https://circleci.com/gh/GSA/grace-config-differ.svg?style=svg)](https://circleci.com/gh/GSA/grace-config-differ) |
| [GSA/grace-fcs-network](https://github.com/GSA/grace-fcs-network) | [![CircleCI](https://circleci.com/gh/GSA/grace-fcs-network.svg?style=svg)](https://circleci.com/gh/GSA/grace-fcs-network) |
| [GSA/grace-iam](https://github.com/GSA/grace-iam) | [![CircleCI](https://circleci.com/gh/GSA/grace-iam.svg?style=svg)](https://circleci.com/gh/GSA/grace-iam) |
| [GSA/grace-inventory](https://github.com/GSA/grace-inventory) | [![CircleCI](https://circleci.com/gh/GSA/grace-inventory.svg?style=svg)](https://circleci.com/gh/GSA/grace-inventory) |
| [GSA/grace-log-parser](https://github.com/GSA/grace-log-parser) | [![CircleCI](https://circleci.com/gh/GSA/grace-log-parser.svg?style=svg)](https://circleci.com/gh/GSA/grace-log-parser) |
| [GSA/grace-logging](https://github.com/GSA/grace-logging) | [![CircleCI](https://circleci.com/gh/GSA/grace-logging.svg?style=svg)](https://circleci.com/gh/GSA/grace-logging) |
| [GSA/grace-paas-rds](https://github.com/GSA/grace-paas-rds) | [![CircleCI](https://circleci.com/gh/GSA/grace-paas-rds.svg?style=svg)](https://circleci.com/gh/GSA/grace-paas-rds) |
| [GSA/grace-securityhub](https://github.com/GSA/grace-securityhub) | [![CircleCI](https://circleci.com/gh/GSA/grace-securityhub.svg?style=svg)](https://circleci.com/gh/GSA/grace-securityhub) |
| [GSA/grace-style-guide](https://github.com/GSA/grace-style-guide) | ![No Builds](images/na.svg) |
| [GSA/grace-tftest](https://github.com/GSA/grace-tftest) | [![CircleCI](https://circleci.com/gh/GSA/grace-tftest.svg?style=svg)](https://circleci.com/gh/GSA/grace-tftest) |

## Private ##
| Repository | Build Status |
| ---------- | ------------ |
| [GSA/idto-sandbox](https://github.com/GSA/idto-sandbox) | [![CircleCI](https://circleci.com/gh/GSA/idto-sandbox.svg?style=svg&circle-token=48c576c0d1c952d6611dfda9664f58dcb6d36984)](https://circleci.com/gh/GSA/idto-sandbox) |
| [GSA/grace-build](https://github.com/GSA/grace-build) | [![CircleCI](https://circleci.com/gh/GSA/grace-build.svg?style=svg&circle-token=6b07cc7993c4c038236c25c794e6b7ba334cc83d)](https://circleci.com/gh/GSA/grace-build) |
| [GSA/grace-core](https://github.com/GSA/grace-core) | [![CircleCI](https://circleci.com/gh/GSA/grace-core.svg?style=svg&circle-token=d0bdc1c9e646280312a4a8254f7c8d4698c8729f)](https://circleci.com/gh/GSA/grace-core) |
| [GSA/grace-customer](https://github.com/GSA/grace-customer) | [![CircleCI](https://circleci.com/gh/GSA/grace-customer.svg?style=svg&circle-token=7e53b3a7f13a014a3dabbcd56a6e27120ba1d405)](https://circleci.com/gh/GSA/grace-customer) |
| [GSA/grace-guardrails](https://github.com/GSA/grace-guardrails) | ![No Builds](images/na.svg) |
| [GSA/grace-inventory-tests](https://github.com/GSA/grace-inventory-tests) | [![CircleCI](https://circleci.com/gh/GSA/grace-inventory-tests.svg?style=svg&circle-token=f86712ce5167665fe0d4a23d4af4fe7e9a20f7de)](https://circleci.com/gh/GSA/grace-inventory-tests) |
| [GSA/grace-logging-examples](https://github.com/GSA/grace-logging-examples) | [![CircleCI](https://circleci.com/gh/GSA/grace-logging-examples.svg?style=svg&circle-token=7764e93956515e856f81bf9e07d230f36b0b2b5b)](https://circleci.com/gh/GSA/grace-logging-examples) |
| [GSA/grace-paas-baseline](https://github.com/GSA/grace-paas-baseline) | [![CircleCI](https://circleci.com/gh/GSA/grace-paas-baseline.svg?style=svg&circle-token=e9714b66e704218f32e190ebc9c8b3ffb9b92660)](https://circleci.com/gh/GSA/grace-paas-baseline) |
| [GSA/grace-ssp](https://github.com/GSA/grace-ssp) | ![No Builds](images/na.svg) |
| [GSA/grace-template](https://github.com/GSA/grace-template) | ![No Builds](images/na.svg) |
| [GSA/IDT-BigFix](https://github.com/GSA/IDT-BigFix) | [![CircleCI](https://circleci.com/gh/GSA/IDT-BigFix.svg?style=svg&circle-token=14c1b058f570454f69bd3fee2392fd903030a15c)](https://circleci.com/gh/GSA/IDT-BigFix) |

## Deprecated ##
| Repository | Build Status |
| ---------- | ------------ |
| [GSA/aws-account-broker](https://github.com/GSA/aws-account-broker) | [![CircleCI](https://circleci.com/gh/GSA/aws-account-broker.svg?style=svg)](https://circleci.com/gh/GSA/aws-account-broker) |
| [GSA/ansible-fluentd](https://github.com/GSA/ansible-fluentd) | [![CircleCI](https://circleci.com/gh/GSA/ansible-fluentd.svg?style=svg)](https://circleci.com/gh/GSA/ansible-fluentd) |
| [GSA/devsecops-cloud-custodian-rules](https://github.com/GSA/devsecops-cloud-custodian-rules) | ![No Builds](images/na.svg) |
| [GSA/devsecops-ebs-backup](https://github.com/GSA/devsecops-ebs-backup) | [![CircleCI](https://circleci.com/gh/GSA/devsecops-ebs-backup.svg?style=svg)](https://circleci.com/gh/GSA/devsecops-ebs-backup) |
| [GSA/devsecops-ekk-stack](https://github.com/GSA/devsecops-ekk-stack) | [![CircleCI](https://circleci.com/gh/GSA/devsecops-ekk-stack.svg?style=svg)](https://circleci.com/gh/GSA/devsecops-ekk-stack) |
| [GSA/devsecops-example](https://github.com/GSA/devsecops-example) | [![CircleCI](https://circleci.com/gh/GSA/devsecops-example.svg?style=svg)](https://circleci.com/gh/GSA/devsecops-example) |
| [GSA/devsecops-iam-roles](https://github.com/GSA/devsecops-iam-roles) | ![No Builds](images/na.svg) |
| [GSA/devsecops-log-forwarding](https://github.com/GSA/devsecops-log-forwarding) | [![CircleCI](https://circleci.com/gh/GSA/devsecops-log-forwarding.svg?style=svg)](https://circleci.com/gh/GSA/devsecops-log-forwarding) |
| [GSA/devsecops-subaccount-admin](https://github.com/GSA/devsecops-subaccount-admin) | ![No Builds](images/na.svg) |
| [GSA/grace-account-lockout](https://github.com/GSA/grace-account-lockout) | ![Archived](images/na.svg) |
| [GSA/grace-example](https://github.com/GSA/grace-example) | [![CircleCI](https://circleci.com/gh/GSA/grace-example.svg?style=svg)](https://circleci.com/gh/GSA/grace-example) |
| [GSA/grace-rhel-ami](https://github.com/GSA/grace-rhel-ami) | [![CircleCI](https://circleci.com/gh/GSA/grace-rhel-ami.svg?style=svg)](https://circleci.com/gh/GSA/grace-rhel-ami) |
| [GSA/grace-sqs-poc](https://github.com/GSA/grace-sqs-poc) | ![Archived](images/na.svg) |
| [GSA/grace-tenant-cleanup](https://github.com/GSA/grace-tenant-cleanup) | ![Archived](images/na.svg) |
| [GSA/grace-tf-module-budget](https://github.com/GSA/grace-tf-module-budget) | [![CircleCI](https://circleci.com/gh/GSA/grace-tf-module-budget.svg?style=svg)](https://circleci.com/gh/GSA/grace-tf-module-budget) |
| [GSA/grace-tf-module-member-account](https://github.com/GSA/grace-tf-module-member-account) | [![CircleCI](https://circleci.com/gh/GSA/grace-tf-module-member-account.svg?style=svg)](https://circleci.com/gh/GSA/grace-tf-module-member-account) |
| [GSA/grace-ubuntu-ami](https://github.com/GSA/grace-ubuntu-ami) | [![CircleCI](https://circleci.com/gh/GSA/grace-ubuntu-ami.svg?style=svg)](https://circleci.com/gh/GSA/grace-ubuntu-ami) |
| [GSA/security-benchmarks](https://github.com/GSA/security-benchmarks) | [![CircleCI](https://circleci.com/gh/GSA/security-benchmarks.svg?style=svg)](https://circleci.com/gh/GSA/security-benchmarks) | ![No Builds](images/na.svg) |
