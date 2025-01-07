terraform {
  backend "s3" {
    bucket = "newrammouse"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
