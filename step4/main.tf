# vpc create
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true ? var.dev : !var.dev
  enable_dns_hostnames = true ? var.dev : !var.dev
}

output "vpc_id" {
  value = aws_vpc.main.id
}