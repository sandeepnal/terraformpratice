resource "aws_instance" "name" {
  ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name = "key"
  availability_zone = "ap-south-1a"
  user_data = file("test.sh")
  tags = {
    Name ="lappy"
  }
    }