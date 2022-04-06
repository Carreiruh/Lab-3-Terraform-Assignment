# Lab-3-Terraform-Assignment

This lab uses various terraform scripts to generate variables, create AWS EC2 Instances, implement ansible playbooks and use local and remote modules.

A variation of sample code has been used from various resources including:

https://learn.hashicorp.com/tutorials/terraform/aws-variables
https://github.com/sebbycorp


# Part 1

Part one implements various terraform variable types to create a aws ec2 script.
The configurable variables defined in the script include name, creation boolean, usernames, project environment, and instance number.

# Part 2

Part two includes scripting to generate aws ec2 instances and implement ansible playbooks. An instance is created with an assigned key pair, and then installs ansible and clones a test playbook from a github link in my other repo.

# Part 3

Part three provides scripting for use implementing local and remote modules. These modules set up webservers and and VPC respectively using a public github repo I have created.