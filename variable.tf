variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-03ba57c8bcd984167"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "tags" {
  description = "A map of tags to assign to the instance"
  type        = map(string)
  default = {
    Name = "auto-test"
  }
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "The AWS profile to use for authentication"
  type        = string
  default     = "saml"
}

variable "backend_bucketstate" {
    type = string
    
  
}
variable "bucket_key" {
    type = string
  
}