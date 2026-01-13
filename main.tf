terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "test-instance" {
    ami = "ami-0b0ea68c435eb488d"
    instance_type = "t2.micro"
    
    tags = {
        Name = "Santi-TestInstance"
    }
}