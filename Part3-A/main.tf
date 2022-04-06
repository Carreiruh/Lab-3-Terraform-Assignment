terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "localstack" {
  source = "C:/Users/Mark/learn-terraform-aws-instance/modules/stackdemo"
  project_tags = {
    Name       = "MC-Local"
    Owner      = "Mark Carreira"
    Purpose    = "Testing"
    CostCenter = "0001"
  }
}