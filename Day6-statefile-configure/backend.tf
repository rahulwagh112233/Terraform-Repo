terraform {
  backend "s3" {
    bucket = "rahul5002"
    key = "dev/terraform.tfstate"
    region = "ap-south-1"
    
  }
}