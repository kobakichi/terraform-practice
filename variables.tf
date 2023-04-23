# プロジェクトで使用する変数名と型定義
variable "vpc_cidr" {
  type        = string
  description = "VPCのCIDR"
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "サブネットのCIDR"
}