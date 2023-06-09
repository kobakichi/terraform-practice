# VPC create
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true ? var.dev : !var.dev
  enable_dns_hostnames = true ? var.dev : !var.dev
}

# # Subnet create sigle cidr
# resource "aws_subnet" "main" {
#   # for_eachでは引数にmap型を指定する必要がある。
#   # subnet_tagsはmap型のため、エラーにならず実行することができる。
#   # ?の後には、{dummy = "dummy"}としても実行可能。
#   for_each = var.dev ? var.subnet_tags : {}

#   vpc_id     = aws_vpc.main.id
#   cidr_block = var.subnet_cidr
# }

# Subnet create list cidr
resource "aws_subnet" "main" {
  # tosetでリストをmapへ変換。:の後は{}ではなく[]を指定しないと左右の型の違いでエラーになる。
  for_each = var.dev ? toset(var.subnet_cidrs) : []

  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
}