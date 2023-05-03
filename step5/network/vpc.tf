# VPC resouce
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Step5-VPC"
  }
}

# create Subnet
resource "aws_subnet" "terraform-subnet" {
  for_each = toset(var.subnet_cidrs)

  vpc_id = aws_vpc.main.id
  cidr_block = each.value
}