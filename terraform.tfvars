aws_region   = "us-east-1"
aws_profile  = "saml"
ami          = "ami-03ba57c8bcd984167"
instance_type = "t3.micro"
tags = {
  Name = "dev-test"
}
backend_bucketstate = "aws-ec2-terraform-bkt"
bucket_key = "state.tfstate"