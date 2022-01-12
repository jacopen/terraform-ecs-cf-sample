terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

data "aws_vpc" "main" {
  id = var.vpc_id
}

data "aws_subnet" "public_0" {
  id = var.public_0_subnet_id
}

data "aws_subnet" "public_1" {
  id = var.public_1_subnet_id
}

data "aws_subnet" "private_0" {
  id = var.private_0_subnet_id
}

data "aws_subnet" "private_1" {
  id = var.private_1_subnet_id
}
