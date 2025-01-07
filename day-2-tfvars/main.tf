resource "aws_instance" "name" {
  ami = var.aminew
  instance_type = var.typenew
  key_name = var.keynew
}