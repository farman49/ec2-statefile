terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# profile configured using aadawscli

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}