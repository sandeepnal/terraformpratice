#create vpc
resource "aws_vpc" "name" {
cidr_block = "10.0.0.0/16"
tags = {
  name = "vpctest"
}
}

#create subnets
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    tags = {
      name = "public_subnet"
    }
  
}
resource "aws_subnet" "private" {
vpc_id = aws_vpc.name.id
cidr_block = "10.0.1.0/24" 
tags = {
    name = "public_subnet"
}
}

#create ig and attached to vpc
resource "aws_internet_gateway" "net" {
vpc_id = aws_vpc.name.id 
}



#create route table and edits routes
resource "aws_route_table" "pubroute" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.net.id
  }
}

#subnet association to route
resource "aws_route_table_association" "association" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.pubroute.id
}

#create sg group

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  vpc_id      = aws_vpc.name.id
  tags = {
    Name = "dev_sg"
  }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


  }

