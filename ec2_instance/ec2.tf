provider "aws" {
    access_key = "your_access_key_here"
    secret_key = "your_secret_key_here"
    region     = "ap-southeast-1" # Singapore region
}
resource "aws_instance" "example" {
    ami          = "ami-"Oe9aeO9818b5c6f7O"
    instance_type = "t2.micro"

    tags = {
        Name = "MyEC2Instance"
    }
}
output "public_ip" {
    value = aws_instance.example.public_ip
}