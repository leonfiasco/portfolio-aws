terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}



resource "aws_s3_bucket" "site" {
  bucket = "leonadjei-portfolio-site-2026"
}