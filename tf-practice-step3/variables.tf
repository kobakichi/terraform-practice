# プロジェクトで使用する変数名と型定義
variable "vpc_cidr" {
  type        = string
  description = "VPCのCIDR"
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "サブネットのCIDR"
}

# 以下は3-4で削除した想定
# variable "sg_allow_cidrs" {
#   type        = list(string)
#   description = "SecurityGroupのAllowCIDRリスト"
# }

# map/object型を定義
variable "sg_ingress_rules" {
  type = map(object({
    protocol = string
  }))
}