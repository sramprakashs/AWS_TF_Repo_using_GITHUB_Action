variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0c55b159cbfafe1f0" # Example AMI, update based on your requirement
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
