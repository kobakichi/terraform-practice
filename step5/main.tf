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

module "ec2" {
  source        = "./compute"
  ec2_ami       = var.ec2_ami
  subnet_ids    = module.vpc2.subnet_ids[0]
  instance_type = var.instance_type
}