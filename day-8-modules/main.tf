module "dev" {
  source = "../day-1-basic-code"
  ami_id = "ami-0fd05997b4dff7aac"
  type = "t2.micro"
  keyname = "key"
}