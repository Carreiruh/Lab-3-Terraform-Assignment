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
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  count         = var.instance_count
  tags          = var.project_environment
}

resource "aws_iam_user" "admin" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

resource "aws_instance" "app_server2" {

  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}