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

# ----------------------------
# for_eachを使用してのサブネット作成

resource "aws_subnet" "tf_pr3_subnet" {
  # リスト型のsubnet_cidrsをmap型に変更してfor_eachを使用する。
  # map型に変更するには、toset関数を使用する。
  # tosetで変更すると、mapのkeyにリストのvalueが設定される。
  # そのため、ここでeach.keyを指定しても取得できるのはvalueのみ。
  for_each   = toset(var.subnet_cidrs)
  vpc_id     = aws_vpc.tf_pr3_vpc.id
  cidr_block = each.value

  tags = {
    Name = "practice3-${each.value}"
  }
}

# ----------------------------
# security groupの作成
resource "aws_security_group" "tf_pr3_sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.tf_pr3_vpc.id

  # インバウンドを許可する
  dynamic "ingress" {
    for_each = var.sg_ingress_rules

    content {
      # descriptionは日本語で書くとエラーになる危険性があるため、英語で記載する
      # cidr_blocksはリストを取得するため、リスト型で記述すること
      description = "dynamic cidr block"
      from_port   = 443
      to_port     = 443
      protocol    = ingress.value.protocol
      cidr_blocks = [ingress.key]
    }
  }

  # アウトバウンドの許可設定
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

