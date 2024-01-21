terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = tf-remote-state20240121112142271600000001
    key    = "my-vpc"
    dynamodb_table = tf-remote-state-lock
    region = "us-east-1"
  }
  

  required_version = ">= 1.1.5"
}

provider "aws" {
  region = var.region
} 
