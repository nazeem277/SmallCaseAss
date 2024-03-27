terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "ec-2-server" {
  ami                    = data.aws_ami.latest.id
  instance_type          = "t2.micro"
  key_name               = "my-key"
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    encrypted             = true
    kms_key_id            = "0ed15902-c3ba-410c-af20-21bb81a94644"
  }

  tags = {
    Name = "ec-2-server"
  }
}

data "aws_ami" "latest" {
  most_recent = true
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20240228"] 
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}