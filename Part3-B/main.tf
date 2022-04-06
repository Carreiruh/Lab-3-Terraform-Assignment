terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "remote-stack" {
  source = "github.com:https://github.com/Carreiruh/Lab-3-Terraform-Assignment.git"
  project_tags =  {
    Name       = "MC-Test"
    Owner      = "Mark Carreira"
    Purpose    = "Testing"
    CostCenter = "0001"
  }
}