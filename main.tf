resource "aws_instance" "test-ec2" {
  ami           = "ami-03ba57c8bcd984167"
  instance_type = "t3.micro"

  tags = {
    Name = "auto-test"
  }
}