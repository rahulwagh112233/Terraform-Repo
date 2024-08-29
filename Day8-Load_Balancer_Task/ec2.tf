#Launch Instance
resource "aws_instance" "prod" {
  ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  key_name = "mykey"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    name = "My EC2"
  }
  
}