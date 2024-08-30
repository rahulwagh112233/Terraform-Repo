provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "name" {
    ami = var.ami
  instance_type = "t2.micro"
  key_name = "mykey"
  count = var.name == "t2.micro" ? 1 : 0

}
variable "name" {
    type = string
    default = "t2.nano"
  
}
variable "ami" {
    type = string
    default = "ami-0a4408457f9a03be3e"
  
}