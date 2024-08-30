resource "aws_instance" "name" {
    ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  key_name = "mykey"

  count = length(var.name)

  tags = {
Name = var.name[count.index]
  }
}
variable "name" {
    type = list(string)
  default = [ "Rahul", "Himanshu","Sri"]
}
