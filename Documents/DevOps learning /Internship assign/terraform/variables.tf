variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the Public Subnet"
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the SSH Key Pair to access EC2"
  default     = "mean-stack-key"
}
