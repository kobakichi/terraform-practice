# Create resource with module
# VPC

module "vpc" {
  source       = "./network"
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}


