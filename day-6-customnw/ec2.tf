resource "aws_instance" "san" {
  ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name = "key"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  associate_public_ip_address = true
  tags = {
    Name = "pub_ec2"
  }
}