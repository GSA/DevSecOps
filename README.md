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
* [GSA/grace-account-lockout](https://github.com/grace-account-lockout)[![CircleCI](https://circleci.com/gh/GSA/grace-account-lockout.svg?style=svg)](https://circleci.com/gh/GSA/grace-account-lockout)
* [GSA/grace-app](https://github.com/GSA/grace-app)
* [GSA/grace-circleci-builder](https://github.com/GSA/grace-circleci-builder)[![CircleCI](https://circleci.com/gh/GSA/grace-circleci-builder.svg?style=svg)](https://circleci.com/gh/GSA/grace-circleci-builder)
* [GSA/grace-citest](https://github.com/GSA/grace-citest)[![CircleCI](https://circleci.com/gh/GSA/grace-citest.svg?style=svg)](https://circleci.com/gh/GSA/grace-citest)
* [GSA/grace-customer](https://github.com/GSA/grace-customer)[![CircleCI](https://circleci.com/gh/GSA/grace-customer.svg?style=svg)](https://circleci.com/gh/GSA/grace-customer)
* [GSA/grace-tftest](https://github.com/GSA/grace-tftest)[![CircleCI](https://circleci.com/gh/GSA/grace-tftest.svg?style=svg)](https://circleci.com/gh/GSA/grace-tftest)

## Private ##
* [GSA/grace-build](https://github.com/GSA/grace-build)(https://circleci.com/gh/GSA/grace-build.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/grace-build)
* [GSA/grace-core](https://github.com/GSA/grace-core)[![CircleCI](https://circleci.com/gh/GSA/grace-core.svg?style=svg&circle-token=d0bdc1c9e646280312a4a8254f7c8d4698c8729f)](https://circleci.com/gh/GSA/grace-core)
* [GSA/grace-logging](https://github.com/GSA/grace-logging)[![CircleCI](https://circleci.com/gh/GSA/grace-logging.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/grace-logging)

## Deprecated ##
* [GSA/aws-account-broker](https://github.com/GSA/aws-account-broker)[![CircleCI](https://circleci.com/gh/GSA/aws-account-broker.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/aws-account-broker)
* [GSA/ansible-fluentd](https://github.com/GSA/ansible-fluentd)[![CircleCI](https://circleci.com/gh/GSA/ansible-fluentd.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/ansible-fluentd)
* [GSA/devsecops-cloud-custodian-rules](https://github.com/GSA/devsecops-cloud-custodian-rules)
* [GSA/devsecops-ebs-backup](https://github.com/GSA/devsecops-ebs-backup)[![CircleCI](https://circleci.com/gh/GSA/devsecops-ebs-backup.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/devsecops-ebs-backup)
* [GSA/devsecops-ekk-stack](https://github.com/GSA/devsecops-ekk-stack)[![CircleCI](https://circleci.com/gh/GSA/devsecops-ekk-stack.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/devsecops-ekk-stack)
* [GSA/devsecops-example](https://github.com/GSA/devsecops-example)[![CircleCI](https://circleci.com/gh/GSA/devsecops-example.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/devsecops-example)
* [GSA/devsecops-iam-roles](https://github.com/GSA/devsecops-iam-roles)
* [GSA/devsecops-log-forwarding](https://github.com/GSA/devsecops-log-forwarding)[![CircleCI](https://circleci.com/gh/GSA/devsecops-log-forwarding.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/devsecops-log-forwarding)
* [GSA/devsecops-subaccount-admin](https://github.com/GSA/devsecops-subaccount-admin)
* [GSA/devsecops-tenant-networking](https://github.com/GSA/devsecops-tenant-networking)[![CircleCI](https://circleci.com/gh/GSA/devsecops-tenant-networking.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/devsecops-tenant-networking)
* [GSA/grace-ansible-role-bridge-dns](https://github.com/GSA/grace-ansible-role-bridge-dns)
* [GSA/grace-example](https://github.com/GSA/grace-example)[![CircleCI](https://circleci.com/gh/GSA/grace-example.svg?style=svg)](https://circleci.com/gh/GSA/grace-example)
* [GSA/grace-inventory-lambda](https://github.com/GSA/grace-inventory-lambda)[![CircleCI](https://circleci.com/gh/GSA/grace-inventory-lambda.svg?style=svg)](https://circleci.com/gh/GSA/grace-inventory-lambda)
* [GSA/grace-rhel-ami](https://github.com/GSA/grace-rhel-ami)[![CircleCI](https://circleci.com/gh/GSA/grace-rhel-ami.svg?style=svg)](https://circleci.com/gh/GSA/grace-rhel-ami)
* [GSA/grace-tf-module-budget](https://github.com/GSA/grace-tf-module-budget)[![CircleCI](https://circleci.com/gh/GSA/grace-tf-module-budget.svg?style=svg)](https://circleci.com/gh/GSA/grace-tf-module-budget)
* [GSA/grace-tf-module-member-account](https://github.com/GSA/grace-tf-module-member-account)[![CircleCI](https://circleci.com/gh/GSA/grace-tf-module-member-account.svg?style=svg)](https://circleci.com/gh/GSA/grace-tf-module-member-account)
* [GSA/grace-ubuntu-ami](https://github.com/GSA/grace-ubuntu-ami)[![CircleCI](https://circleci.com/gh/GSA/grace-ubuntu-ami.svg?style=svg)](https://circleci.com/gh/GSA/grace-ubuntu-ami)
* [GSA/grace-network-security](https://github.com/GSA/grace-network-security)
* [GSA/security-benchmarks](https://github.com/GSA/security-benchmarks)[![CircleCI](https://circleci.com/gh/GSA/security-benchmarks.svg?style=svg&circle-token=fe4919d129e0a79d08448086f540b960a845a4b2)](https://circleci.com/gh/GSA/security-benchmarks)
