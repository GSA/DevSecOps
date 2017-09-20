# DevSecOps-Infrastructure [![CircleCI](https://circleci.com/gh/GSA/DevSecOps-Infrastructure.svg?style=svg)](https://circleci.com/gh/GSA/DevSecOps-Infrastructure)

Base infrastructure for future DevSecOps environment in AWS

This project implements the networking components for a base infrastructure in AWS. This is specifically in reference to the future DevSecOps implementation.

Here, we'll use terraform to create 4 VPC's and the required subnets, starting with the management VPC.

* vpc-prod
* vpc-dev
* vpc-test
* vpc-mgmt

As of 08/30/17, this set only creates the vpc-mgmt VPC.

## Products In Use

* [`terraform/`](terraform/) - [Terraform](https://www.terraform.io/) code for setting up the infrastructure at the [Amazon Web Services (AWS)](https://aws.amazon.com/) level

## Important concepts

### Configuration as code

All configuration is code, and [all setup steps are documented](#setup). New environment(s) can be created from scratch quickly and reliably.

### DRY

The code follows the [Don't Repeat Yourself (DRY)](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) principle. Values that need to be shared are passed around as variables, rather than being hard-coded in multiple places. This ensures configuration stays in sync.

## Setup

1. Set up the AWS CLI on the workstation that will be used to deploy the code.
    1. [Install](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
    1. [Configure](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)
1. Install additional dependencies:
    * [Terraform](https://www.terraform.io/)
1. Set up the Terraform backend.

    ```sh
    aws s3api create-bucket --bucket devsecops-infrastructure
    aws s3api put-bucket-versioning --bucket devsecops-infrastructure --versioning-configuration Status=Enabled
    ```
    NOTE: You will need to replace your bucket name with something unique, because bucket names must be unique per-region. If you get an error that the bucket name is not available, then your choice was not unique. Remember this bucket name, you'll need it later.

1. Create the Terraform variables file.

    ```sh
    cd terraform
    cp terraform.tfvars.example terraform.tfvars
    cp backend.tfvars.example backend.tfvars
    ```

1. Fill out [`terraform.tfvars`](terraform/terraform.tfvars.example). Mind the variable types and follow the noted rules.
1. Fill out ['backend.tfvars'](terraform/backend.tfvars.example). The "bucket" parameter *must* match the bucket name you used in the AWS CLI command above, otherwise terraform will throw an error on the init command.
1. Set up environment using Terraform.

    ```sh
    terraform init -backend-config="backend.tfvars"
    ```

1. Run the [deployment](#deployment) steps below.

## Deployment

For initial or subsequent deployment, assuming you already executed the init above:

1. Verify that terraform understands what it's going to do.

    ```sh
    terraform plan
    ```
1. If everything looks fine, deploy up environment using Terraform.

    ```sh
    terraform apply
    ```
