# VPCの作成
resource "aws_vpc" "tf_pr3_vpc" {
  cidr_block = var.vpc_cidr

}

# countを使用してのSubnetの作成
# resource "aws_subnet" "tf_pr3_subnet" {
#   # length関数で、変数subnet_cidrsの長さ、個数を取得している。
#   # この場合、リスト型で2つ存在するため、countでは2回回数を指定していることになる。
#   # countは
#   count      = length(var.subnet_cidrs)
#   vpc_id     = aws_vpc.tf_pr3_vpc.id
#   cidr_block = var.subnet_cidrs[count.index]
# }

# for_eachを使用してのサブネット作成

resource "aws_subnet" "tf_pr3_subnet" {
  for_each = toset(var.subnet_cidrs)
  vpc_id = aws_vpc.tf_pr3_vpc.id
  cidr_block = each.value

  tags = {
    Name = "practice3-${each.key}"
  }
}