resource "aws_instance" "name" {
    ami = "ami-02b49a24cfb95941c"
subnet_id = aws_subnet.name.id
instance_type = "t2.micro"
}
resource "aws_instance" "Private" {
  ami = "ami-02b49a24cfb95941c"
  subnet_id = aws_subnet.tow.id


  instance_type = "t2.micro"
}
