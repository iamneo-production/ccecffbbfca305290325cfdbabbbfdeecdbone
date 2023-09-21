terraform {
    required_providers{
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
resource "aws_instance" "linuxserver" {
    ami          = "ami-0dacd9d37849a9f38"
    instance_type = "t2.micro"

    tags = {
        Name = "MyLinuxServer"
    }
}
output "public_ip" {
    value = aws_instance.linux_server.public_ip
}