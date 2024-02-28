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
  secret_key = "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"
}

