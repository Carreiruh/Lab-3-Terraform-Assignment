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

module "set-vpc" {
  source = "github.com/Carreiruh/TestVPCRepo"
}