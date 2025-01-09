variable "ami_id" {
    description = "inserting ami value to maint.tf"
    type = string
    default = "ami-0fd05997b4dff7aac"
  
}
variable "type" {
    type = string
    default = "t2.micro"
  
}
variable "keyname" {
    type = string
    default = "key"
  
}