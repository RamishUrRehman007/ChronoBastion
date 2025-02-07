terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# 1. Create a Security Group for the Bastion
resource "aws_security_group" "bastion_sg" {
  name        = "${var.project_name}-sg"
  description = "Security Group for bastion host"
  vpc_id      = var.vpc_id

  # Ingress rule: Allow SSH from allowed_ssh_cidr
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  # Egress rule: Allow all outbound
  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-sg"
  }
}

# 2. Create the Bastion EC2 Instance
resource "aws_instance" "bastion" {
  ami           = var.bastion_ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id

  vpc_security_group_ids = [
    aws_security_group.bastion_sg.id
  ]

  key_name = var.key_name

  # Ensures the instance gets a public IP in a public subnet
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-instance"
  }
}
