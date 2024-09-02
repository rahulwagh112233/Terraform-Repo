terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"  # Optional: specify the version you want to use
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}