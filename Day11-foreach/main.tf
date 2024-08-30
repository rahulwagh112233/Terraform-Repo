provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "name" {
    ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  key_name = "mykey"

 for_each = toset(var.name)

tags = {
  Name = each.value
}

}
variable "name" {
    type = list(string)
    default = ["Rahul","Himansu","rohan" ]
  
}

