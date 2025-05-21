# create an ec2 instance 
provider "aws" {
 region = "eu-west-1"
}
# where to create -provide cloud provider name 
# which region to create the resource/service 
# which resource to create 
resource "aws_instance" "app_instance" {
# which AMI ID ami-0c1c30571d2dae5c9(for ubuntu 22.04 LTS)
ami = "ami-0c1c30571d2dae5c9"
# which instance type "t3.micro" 
instance_type = "t3.micro"
# please add a public ip address to this instance 
associate_public_ip_address = true 

# aws_access_key = asdfasdf (MUST NEVER DO THIS)
# AWS_SECRET_KEY = ASDFASDF(MUST NEVER DO THIS)
# name instance to the instance 
tags = {
  Name = "tech504-lena-tf-test-app"
}
}
# syntax to HCL is {key = value}