terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "kk-remote-state"
    key    = "kk-vpc"
    region = "us-east-1"
    dynamodb_table = "kk-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}