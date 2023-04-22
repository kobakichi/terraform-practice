# terraformブロック
# terraformのバージョンと、プロバイダーのバージョンを指定
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.49.0"
    }
  }

  required_version = "~> 1.3.7"
}

# プロバイダーのリージョン指定
# デフォルトタグの指定
provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env = "terraform-practice-3"
      Owner = "kobakichi"
      Step = "step3"
    }
  }
}