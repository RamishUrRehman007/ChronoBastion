variable "project_name" {
  description = "Prefix for resource naming."
  type        = string
  default     = "chrono-bastion"
}

variable "region" {
  description = "AWS region where resources will be deployed."
  type        = string
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "Existing VPC ID for the bastion host."
  type        = string
}

variable "public_subnet_id" {
  description = "Existing Public Subnet ID where the bastion host is launched."
  type        = string
}

variable "bastion_ami" {
  description = "AMI for the bastion host (e.g., Amazon Linux 2)."
  type        = string
  default     = "ami-07cb013c9ecc583f0" # Example Amazon Linux 2 in us-east-1
}

variable "instance_type" {
  description = "Instance type for the bastion host."
  type        = string
  default     = "t2.micro"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to connect via SSH (e.g., your IP)."
  type        = string
  default     = "0.0.0.0/0"
}

variable "key_name" {
  description = "Name of an existing AWS key pair to use for SSH."
  type        = string
  default     = "my-ssh-key"
}
