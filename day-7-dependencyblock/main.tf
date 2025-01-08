resource "aws_instance" "dependent" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "key"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbcdfrs" 
    depends_on = [ aws_instance.dependent ]
}