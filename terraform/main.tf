provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}

# Define outputs to show after instance creation
output "instance_id" {
  value = aws_instance.example.id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

terraform {
  backend "s3" {
    bucket  = "your-bucket-name"
    key     = "terraform/ec2/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
