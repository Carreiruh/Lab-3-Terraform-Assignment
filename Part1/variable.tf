variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Super Cool Instance"
}

variable "instance_count" {
  description = "EC2 Instance count"
  type        = number
  default     = 2
}
variable "create_ec2" {
  description = "If set to true, it will generate the ec2 instance"
  type        = bool
}

variable "user_names" {
  description = "usernames"
  type        = list(string)
  default     = ["admin", "ec2-user"]
}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default = {
    project     = "project-testmc",
    environment = "dev"
  }
}