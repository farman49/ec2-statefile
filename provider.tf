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
  region  = "us-east-1"
  profile = "saml"
}