# VPCの作成
resource "aws_vpc" "tf_pr3_vpc" {
  cidr_block = var.vpc_cidr

}

# Subnetの作成
resource "aws_subnet" "tf_pr3_subnet" {
  count      = length(var.subnet_cidrs)
  vpc_id     = aws_vpc.tf_pr3_vpc.id
  cidr_block = var.subnet_cidrs[count.index]
}