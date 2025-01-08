provider "aws" {
  
}
resource "aws_instance" "name" {
  ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name = "key"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "lappy"
  }
  # lifecycle {
  #   create_before_destroy = true

  # }
  # lifecycle {
  #   ignore_changes = [ tags ]
  # }
  # lifecycle {
  #   prevent_destroy = true
  # }
}