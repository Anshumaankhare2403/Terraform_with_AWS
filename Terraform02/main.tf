terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "new_S3_bucket_created" {
  bucket = "newbuketnewway-yourname-2026"
  tags={
    Name="myterraformbucker"
    Environment = "dev"
  }  
}

resource "aws_instance" "new_instance_createion_in_terraform" {
  ami = "ami-09c886b32db1aa90c"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-terraform-instance"
  }
}