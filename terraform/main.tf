terraform {
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_security_group" "insecure_sg" {
  name        = "insecure-sg-demo"
  description = "Open SSH for demo purposes"
  vpc_id      = "vpc-demo"

  ingress {
    description = "Open SSH to the world"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

