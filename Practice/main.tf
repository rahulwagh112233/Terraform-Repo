resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Custome VPC"
  }
}
resource "aws_subnet" "name" {
vpc_id = aws_vpc.name.id
cidr_block = "10.0.0.0/26"
tags = {
  Name = "Public Subnet1"
}
  
}
resource "aws_subnet" "tow" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/26"
    tags = {
        Name = "Private Subnet1"
    }
    availability_zone = "ap-south-1a"
  
}

# Create NAT Gateway
resource "aws_nat_gateway" "public" {
 subnet_id = aws_subnet.tow.id
 allocation_id = aws_eip.name.id
tags = {
  Name = "Nat"
}
}
resource "aws_eip" "name" {
  tags = {
    Name = "eip"
  }
}

resource "aws_internet_gateway" "name" {
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "ig-public"
    }
  
}
resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.tow.id
}

resource "aws_eip" "example" {
 tags = {
Name = "eip"
 }
}

resource "aws_route_table" "Private" {
  vpc_id = aws_vpc.name.id
tags = {
  Name = "Private RT"
}
route {
  nat_gateway_id = aws_nat_gateway.example.id
  cidr_block = "0.0.0.0/0"
}
  
}
resource "aws_route_table_association" "Private" {
  route_table_id = aws_route_table.Private.id
  subnet_id = aws_subnet.tow.id
  
}

resource "aws_route_table" "name" {
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "Public RT"
    }

    # Add Routes (inboud traffic)
    route  {
       gateway_id = aws_internet_gateway.name.id
       cidr_block = "0.0.0.0/0"
}
}
resource "aws_route_table_association" "name" {
    route_table_id = aws_route_table.name.id
    subnet_id = aws_subnet.name.id
}
resource "aws_security_group" "allow_tls" {
  name = "allow_tls"
    vpc_id = aws_vpc.name.id
    
  tags = {
    Name="My_SG"
  }



ingress  {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
}
}