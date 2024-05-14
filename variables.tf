variable "aws_region" { type = string }
variable "amis" { type = map(any) }
variable "vpc_cidr" { type = string }
variable "vpc_name" { type = string }
variable "key_name" { type = string }
#variable "public_subnet_cidrs" { type = list(any) }
#variable "private_subnet_cidrs" { type = list(any) }
#variable "azs" { type = list(any) }
variable "public_subnet_cidrs" { type = string }
variable "private_subnet_cidrs" { type = string }
variable "azs" { type = string }
variable "environment" { type = string }
#variable "instance_type" { type = map(any) }
variable "instance_type" { type = string }
variable "projid" { type = string }
variable "imagename" { type = string }