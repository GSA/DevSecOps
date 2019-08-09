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
| [GSA/grace-app](https://github.com/GSA/grace-app) | ![No Builds](images/na.svg) |
| [GSA/grace-circleci-builder](https://github.com/GSA/grace-circleci-builder) | [![CircleCI](https://circleci.com/gh/GSA/grace-circleci-builder.svg?style=svg)](https://circleci.com/gh/GSA/grace-circleci-builder) |
| [GSA/grace-citest](https://github.com/GSA/grace-citest) | [![CircleCI](https://circleci.com/gh/GSA/grace-citest.svg?style=svg)](https://circleci.com/gh/GSA/grace-citest) |
| [GSA/grace-logging](https://github.com/GSA/grace-logging) | [![CircleCI](https://circleci.com/gh/GSA/grace-logging.svg?style=svg&circle-token=3ba172998300c4ff769a83484c82c8305c8357e7)](https://circleci.com/gh/GSA/grace-logging) |
| [GSA/grace-securityhub](https://github.com/GSA/grace-securityhub) | [![CircleCI](https://circleci.com/gh/GSA/grace-securityhub.svg?style=svg&circle-token=a32c37fff5293d7e05b63616c8644aedb3c04832)](https://circleci.com/gh/GSA/grace-securityhub) |
| [GSA/grace-style-guide](https://github.com/GSA/grace-style-guide) | ![No Builds](images/na.svg) |
| [GSA/grace-tftest](https://github.com/GSA/grace-tftest) | [![CircleCI](https://circleci.com/gh/GSA/grace-tftest.svg?style=svg)](https://circleci.com/gh/GSA/grace-tftest) |

## Private ##
| Repository | Build Status |
| ---------- | ------------ |
| [GSA/grace-build](https://github.com/GSA/grace-build) | [![CircleCI](https://circleci.com/gh/GSA/grace-build.svg?style=svg&circle-token=6b07cc7993c4c038236c25c794e6b7ba334cc83d)](https://circleci.com/gh/GSA/grace-build) |
| [GSA/grace-cm-8-3](https://github.com/GSA/grace-cm-8-3) | [![CircleCI](https://circleci.com/gh/GSA/grace-cm-8-3.svg?style=svg&circle-token=34f81cb9295348a09e3ef7cc7b1366667519f208)](https://circleci.com/gh/GSA/grace-cm-8-3) |
| [GSA/grace-core](https://github.com/GSA/grace-core) | [![CircleCI](https://circleci.com/gh/GSA/grace-core.svg?style=svg&circle-token=d0bdc1c9e646280312a4a8254f7c8d4698c8729f)](https://circleci.com/gh/GSA/grace-core) |
| [GSA/grace-core-logging](https://github.com/GSA/grace-core-logging) | [![CircleCI](https://circleci.com/gh/GSA/grace-core-logging.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/grace-core-logging) |
| [GSA/grace-custodian](https://github.com/GSA/grace-custodian) | [![CircleCI](https://circleci.com/gh/GSA/grace-custodian.svg?style=svg&circle-token=a99463d5a32501483181c14bc4b058d4e6135c8c)](https://circleci.com/gh/GSA/grace-custodian) |
| [GSA/grace-customer](https://github.com/GSA/grace-customer) | [![CircleCI](https://circleci.com/gh/GSA/grace-customer.svg?style=svg&circle-token=7e53b3a7f13a014a3dabbcd56a6e27120ba1d405)](https://circleci.com/gh/GSA/grace-customer) |
| [GSA/grace-inventory-lambda](https://github.com/GSA/grace-inventory-lambda) | [![CircleCI](https://circleci.com/gh/GSA/grace-inventory-lambda.svg?style=svg&circle-token=f42001ceadc8013191d56097c18d356b202e706e)](https://circleci.com/gh/GSA/grace-inventory-lambda) |
| [GSA/grace-logging-examples](https://github.com/GSA/grace-logging-examples) | [![CircleCI](https://circleci.com/gh/GSA/grace-logging-examples.svg?style=svg&circle-token=7764e93956515e856f81bf9e07d230f36b0b2b5b)](https://circleci.com/gh/GSA/grace-logging-examples) |
| [GSA/grace-template](https://github.com/GSA/grace-template) | ![No Builds](images/na.svg) |

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
| [GSA/grace-account-lockout](https://github.com/grace-account-lockout) | ![No Builds](images/na.svg) |
| [GSA/grace-ansible-role-bridge-dns](https://github.com/GSA/grace-ansible-role-bridge-dns) | ![No Builds](images/na.svg) |
| [GSA/grace-example](https://github.com/GSA/grace-example) | [![CircleCI](https://circleci.com/gh/GSA/grace-example.svg?style=svg)](https://circleci.com/gh/GSA/grace-example) |
| [GSA/grace-rhel-ami](https://github.com/GSA/grace-rhel-ami) | [![CircleCI](https://circleci.com/gh/GSA/grace-rhel-ami.svg?style=svg)](https://circleci.com/gh/GSA/grace-rhel-ami) |
| [GSA/grace-tf-module-budget](https://github.com/GSA/grace-tf-module-budget) | [![CircleCI](https://circleci.com/gh/GSA/grace-tf-module-budget.svg?style=svg)](https://circleci.com/gh/GSA/grace-tf-module-budget) |
| [GSA/grace-tf-module-member-account](https://github.com/GSA/grace-tf-module-member-account) | [![CircleCI](https://circleci.com/gh/GSA/grace-tf-module-member-account.svg?style=svg)](https://circleci.com/gh/GSA/grace-tf-module-member-account) |
| [GSA/grace-ubuntu-ami](https://github.com/GSA/grace-ubuntu-ami) | [![CircleCI](https://circleci.com/gh/GSA/grace-ubuntu-ami.svg?style=svg)](https://circleci.com/gh/GSA/grace-ubuntu-ami) |
| [GSA/grace-network-security](https://github.com/GSA/grace-network-security) | ![No Builds](images/na.svg) |
| [GSA/security-benchmarks](https://github.com/GSA/security-benchmarks) | [![CircleCI](https://circleci.com/gh/GSA/security-benchmarks.svg?style=svg)](https://circleci.com/gh/GSA/security-benchmarks) | ![No Builds](images/na.svg) |
