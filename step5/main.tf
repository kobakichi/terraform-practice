# Create resource with module
# VPC

module "vpc1" {
  source       = "./network"
  vpc_cidr     = var.vpc_network_cidr
  subnet_cidrs = var.subnet_cidr_blocks
}

module "vpc2" {
  source       = "./network"
  vpc_cidr     = var.vpc_network_cidr
  subnet_cidrs = var.subnet_cidr_blocks
}
