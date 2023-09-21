terraform {
    required_provider{
        aws = {
            source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region     = "ap-southeast-1" # Singapore region
    access_key = "AKIAY6OXM4NMALTE27NW"
    secret_key = "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"
}
resource "aws_instance" "linux" {
    ami          = "ami-"Oe9aeO9818b5c6f7O"
    instance_type = "t2.micro"

    tags = {
        Name = "MyEC2Instance"
    }
}
output "public_ip" {
    value = aws_instance.example.public_ip
}