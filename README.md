# ec2_statefile



# Terraform Setup Guide

## Overview

This Terraform setup allows you to create and manage AWS resources, specifically EC2 instances, by defining variables and passing their values through various methods. This guide will explain how to:

1. Declare new variables in the `variables.tf` file.
2. Pass values to these variables via the `terraform.tfvars` file.
3. Overwrite default values using the command line or environment variables.

## 1. Declaring Variables

All variables used in your Terraform configuration should be declared in the `variables.tf` file. This file specifies the type, description, and default value (if any) for each variable.

### Example

To declare a new variable for the EC2 instance key pair, add the following to your `variables.tf` file:

``` hcl
variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = "default-key"  # Optional: this is the default value
}




Using the Declared Variable in main.tf
You can now use the declared variable in your main.tf file:

```
resource "aws_instance" "test-ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name  # Using the new variable

  tags = var.tags
}

```

## 2. Passing Variable Values via terraform.tfvars
To pass specific values to your variables, create or update the terraform.tfvars file.

##  Example
Add the following lines to your terraform.tfvars file:

# terraform.tfvars

aws_region   = "us-east-1"
aws_profile  = "saml"
ami          = "ami-03ba57c8bcd984167"
instance_type = "t3.micro"
key_name     = "my-custom-key"  # Overwrites the default value

tags = {
  Name = "auto-test"
}



## Explanation
terraform.tfvars: This file is automatically loaded by Terraform to set the values of variables. It overwrites any default values set in the variables.tf file.