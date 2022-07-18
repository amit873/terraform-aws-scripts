# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA2766UFLMPMNCOCXI"
  secret_key = "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"
}

# resource "aws_instance" "my-first-server" {
#   ami           = ""
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "prod-vpc"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}
