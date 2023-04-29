# terraformブロック
# terraformのバージョンと、プロバイダーのバージョン管理
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # versionは以下の数値以上であることを指定
      version = ">= 4.49.0"
    }
  }

  # TerraformCLIのバージョンが1.3.7以上かつ2.0未満を指定
  required_version = "~> 1.3.7"
}

# リージョンの指定とデフォルトタグの設定
provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env   = "terraform-practice-4"
      Owner = "kobakichi"
      Step  = "step4"
    }
  }
}