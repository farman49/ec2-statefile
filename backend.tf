# Configure Terraform to use S3 as the remote backend
 terraform {
   backend "s3" { 
   endpoints = { s3 = "https://efvpurfb-as-1p.cable.comcast.com" }
   bucket = "aws-ec2-terraform-bkt"  # Name of the S3 bucket to store the state file
   key = "state.tfstate"
   
   region = "us-east-1"            # AWS region where the S3 bucket is located
   skip_metadata_api_check = true 
   skip_credentials_validation = true
   skip_requesting_account_id = true 
   use_path_style              = true
   
   }
 }