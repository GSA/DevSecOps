# GSA DevSecOps [![CircleCI](https://circleci.com/gh/GSA/DevSecOps.svg?style=svg)](https://circleci.com/gh/GSA/DevSecOps)

Terraform modules for GSA DevSecOps

This repo contains modules that can be reused as part of a DevSecOps implementation. Users are strongly encouraged to review the drawings in the /docs/diagrams directory.

DevSecOps at GSA implements 1 AWS subaccount per VPC, per environment, per app:

1-1-1-1:
1 AWS account == 1 Environment == 1 VPC == 1 application

The recommended components are in the /modules directory.

You may wish to consult the following example repos for ideas or templates to deploy these modules:

* [GSA/devsecops-example-pipeline](https://github.com/GSA/devsecops-example-pipeline)
* [GSA/devsecops-example-prod](https://github.com/GSA/devsecops-example-prod)
* [GSA/devsecops-example-dev](https://github.com/GSA/devsecops-example-dev)
* [GSA/devsecops-example-test](https://github.com/GSA/devsecops-example-test)

## Products In Use

* [`terraform/`](terraform/) - [Terraform](https://www.terraform.io/) code for setting up the infrastructure at the [Amazon Web Services (AWS)](https://aws.amazon.com/) level

## Using the Modules

Using the modules is as easy as declaring them in your code, along with a pointer to the proper location. For example, the following terraform code will declare a VPC flow log using the module presented here.

```hcl
module "vpc_flow_log" {
  source = "github.com/GSA/DevSecOps//terraform//modules//vpc_flow_log"
  vpc_name = "${var.vpc_name}"
  vpc_id = "${module.mgmt_vpc.vpc_id}"
}
```

You must consult the documentation of the individual modules to verify that you are using the proper variables for each.

## Modules Provided

This repo provides 3 modules:

* VPC
* IAM Role Policy
* VPC Flow Logs

### VPC Variables

This module requires a number of variables. Consult the [file](https://github.com/GSA/DevSecOps/blob/master/terraform/modules/vpc/variables.tf) for a list. Most of them provide defaults. The others require input. If a default for a variable is not given, it must be defined.

### CloudWatch IAM Role Policy Variables

This module requires one variable: policy_name (as string)

### VPC Flow Log Variables

This module requires two variables:

* vpc_id (string)
* vpc_name (string)
