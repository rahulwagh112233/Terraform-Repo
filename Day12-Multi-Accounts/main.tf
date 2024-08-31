provider "aws" {
  region = "ap-south-1"
  profile = "default"
  alias = "mumbai"
  }


provider "aws" {
    region = "us-east-1"
  profile = "Himanshu"
  alias = "vergenia"
  
}
resource "aws_s3_bucket" "Test" {
    
  bucket = "himanshuuu"

  provider = aws.mumbai
}
resource "aws_s3_bucket" "Dev" {
    bucket = "srikrishnaaaa"
  provider = aws.vergenia
}