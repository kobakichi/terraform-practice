# プロジェクトで使用する変数名と型定義
variable "vpc-cidr" {
  type = string
  description = "VPCのCIDR"
}

variable "subnet-cidrs" {
  type = string
  description = "サブネットのCIDR"
}