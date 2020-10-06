provider "aws" {
  region = "eu-central-1"
}


resource "aws_instance" "example" {
  ami           = "ami-00a205cb8e06c3c4e"
  key_name         = "awstestbar_instance_key"
  instance_type = "t2.micro"
  security_groups = [ "launch-wizard-2" ]
  user_data = "${file("apache.sh")}"
  
}
