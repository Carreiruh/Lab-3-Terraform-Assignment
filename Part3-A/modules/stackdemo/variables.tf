variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  description = "Super cool AMI"
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "project_tags" {
  type = map(any)
  default = {
    Name       = "terraform-create"
    Owner      = "MC"
    Purpose    = "Testing"
    CostCenter = "0001"
  }
}