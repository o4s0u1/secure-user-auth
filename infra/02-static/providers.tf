terraform {
  required_version = ">= 1.10.0" # Enforce version compatibility for S3 native locking
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  # Backend configuration is dynamically injected at 'terraform init' using backend.tfvars
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
}