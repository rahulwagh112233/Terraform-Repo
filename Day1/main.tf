resource "aws_instance" "name" {
    ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  key_name = "mykey"
tags={
Name = "ra"
}
}
