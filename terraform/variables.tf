variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0866a3c8686eaeeba" # Example AMI, update based on your requirement
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
