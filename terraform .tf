provider "aws" {
    region = "ap-southeast-1"
    access_key = ""
    secret_key = ""
}
resource "aws_instance" "linux_server" {
    ami = ""
    instance_type = ""

    tags = {
        Name = "MuLinuxServer"
    }
}
output "public_ip" {
    value = aws_instance.linux_server.publi
}