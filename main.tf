# Configure Terraform to use S3 as the backend
terraform {
  backend "s3" {
    bucket = "testterraformcod1"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Define AWS provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA35ILQ5ZD4OCA6COK"
  secret_key = "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"
}
 
resource "aws_s3_bucket" "bucket" {
  bucket = "sujdhdsidhslktabchy"
 
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
