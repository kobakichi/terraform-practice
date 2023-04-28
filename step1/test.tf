terraform {
  required_providers {
    aws = {
      version = ">= 4.49.0"
    }
  }
}

# どのリージョンを使用するかの設定
provider "aws" {
  region = "ap-northeast-1"
}

# VPCの作成
resource "aws_vpc" "tf_test" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "tf-test"
  }
}
