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
* [GSA/grace-circleci-builder](https://github.com/GSA/grace-circleci-builder)
* [GSA/grace-tftest](https://github.com/GSA/grace-tftest)

## Private ##
* [GSA/grace-core](https://github.com/GSA/grace-core)
* [GSA/grace-logging](https://github.com/GSA/grace-logging)

## Deprecated ##
* [GSA/aws-account-broker](https://github.com/GSA/aws-account-broker)
* [GSA/ansible-fluentd](https://github.com/GSA/ansible-fluentd)
* [GSA/devsecops-cloud-custodian-rules](https://github.com/GSA/devsecops-cloud-custodian-rules)
* [GSA/devsecops-ebs-backup](https://github.com/GSA/devsecops-ebs-backup)
* [GSA/devsecops-ekk-stack](https://github.com/GSA/devsecops-ekk-stack)
* [GSA/devsecops-example](https://github.com/GSA/devsecops-example)
* [GSA/devsecops-iam-roles](https://github.com/GSA/devsecops-iam-roles)
* [GSA/devsecops-log-forwarding](https://github.com/GSA/devsecops-log-forwarding)
* [GSA/devsecops-subaccount-admin](https://github.com/GSA/devsecops-subaccount-admin)
* [GSA/devsecops-tenant-networking](https://github.com/GSA/devsecops-tenant-networking)
* [GSA/grace-example](https://github.com/GSA/grace-example)
* [GSA/grace-rhel-ami](https://github.com/GSA/grace-rhel-ami)
* [GSA/grace-ubuntu-ami](https://github.com/GSA/grace-ubuntu-ami)
* [GSA/security-benchmarks](https://github.com/GSA/security-benchmarks)
* [GSA/grace-tf-module-budget](https://github.com/GSA/grace-tf-module-budget)
* [GSA/grace-tf-module-member-account](https://github.com/GSA/grace-tf-module-member-account)
* [GSA/grace-ansible-role-bridge-dns](https://github.com/GSA/grace-ansible-role-bridge-dns)
* [GSA/grace-network-security](https://github.com/GSA/grace-network-security)
* [GSA/grace-inventory-lambda](https://github.com/GSA/grace-inventory-lambda)
