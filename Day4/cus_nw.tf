#1 create VPC
resource "aws_vpc" "custome-vpc" {
    cidr_block = "10.0.0.0/16"
tags = {
  Name = "custome_vpc"
}
 
}
# 2 create internet gateway
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.custome-vpc.id
    tags = {
      Name = "ig"
    }
  
}
#3 create subnet
resource "aws_subnet" "subnet" {
vpc_id = aws_vpc.custome-vpc.id
availability_zone = "ap-south-1a"
cidr_block = "10.0.0.0/26"
  tags = {
    Name = "public subnet"
  }
}
#4 create subnet
resource "aws_subnet" "subnet2" {
vpc_id = aws_vpc.custome-vpc.id
availability_zone = "ap-south-1b"
cidr_block = "10.0.1.0/26"
  tags = {
    Name = "Private subnet2"
  }
}

#5 i -create route table
resource "aws_route_table" "name" {
    vpc_id = aws_vpc.custome-vpc.id
  tags = {
    Name = "route table1" 
  }
  #ii- inbound route 
  route {
    gateway_id = aws_internet_gateway.ig.id
    cidr_block = "0.0.0.0/0"
  }
}
#6 create subnet association
resource "aws_route_table_association" "rt_association" {

  subnet_id = aws_subnet.subnet.id
  route_table_id = aws_route_table.name.id
}

#7 i-create Security Groups
resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.custome-vpc.id
    name = "mysg"
    description = "create security group"
    tags = {
        Name = "mysg"
    } 
#ii -inbound rule
ingress  {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
}
egress {
     from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
}

}
