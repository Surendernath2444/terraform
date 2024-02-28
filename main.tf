# Configure Terraform to use S3 as the backend
terraform {
  backend "s3" {
    bucket = "testterraformcod"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Define AWS provider
provider "aws" {
  region     = "us-east-2"
  access_key = "AKIATCKARQYVEN5V2KPJ"
  secret_key = "kYznfOkErOcQHWY8Qmlvf/KBlRGN8omGZrfCmEMW"
}

# Define AWS resource
resource "aws_instance" "example" {
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
