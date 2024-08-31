provider "aws" {
  
  region = "ap-south-1"
  alias = "mubai"
}

provider "aws" {
    region = "us-east-1"

    alias = "vergenia"
}
resource "aws_s3_bucket" "Test" {
    bucket = "rahulll"
  provider = aws.mubai
}
resource "aws_s3_bucket" "Dev" {
    bucket = "rohannnn"
  provider = aws.vergenia
}