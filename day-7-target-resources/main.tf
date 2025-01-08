resource "aws_instance" "dependent" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "key"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbcdfr" 
}
#terraform apply -target=aws_s3_bucket.dependent
#terraform destroy -target=aws_s3_bucket.dependent