terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
  required_version = ">=1.6.0"
}

provider "aws" {
    region = "us-east-1"
    default_tags {
      tags = {
        ManagedBy = "Terraform"
        Enviroment = "dev"
        Project = "To create ec2 throught terraform"
      }
    }
}

resource "aws_instance" "web" {
  ami           = "ami-09c886b32db1aa90c"
  instance_type = "t3.micro"

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  tags = {
    Name = "terraform-ec2"
  }
}

