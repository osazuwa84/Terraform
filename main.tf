provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAW3"
  secret_key = "HYpymC4S"
}

resource "aws_instance" "awsserver" {
  ami            = "ami-0cff7528ff583bf9a"
  instance_type  = "t2.micro"
  key_name       = "NVirginiaKey"
  security_groups = ["all protocol"]
  tags = {
    Name = "demo-vm"
  }
}
