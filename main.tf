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
  access_key = "AKIATCKARQYVKSEKBBMW"
  secret_key = "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"
}
 
resource "aws_s3_bucket" "bucket" {
  bucket = "sujdhdsidhshasdrf"
 
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
