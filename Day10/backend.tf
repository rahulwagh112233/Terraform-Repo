terraform {
  backend "s3" {
    bucket = "rahullll"
    key = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}