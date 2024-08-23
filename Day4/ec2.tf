resource "aws_instance" "name" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "mykey"
    subnet_id = aws_subnet.subnet.id
    vpc_security_group_ids = [aws_security_group.sg.id]

}