# 子モジュールのoutput.tfファイルで定義した値を受け取っている。
output "vpc_id" {
  value = module.vpc1.vpc_id
}

output "subnet_ids" {
  value = module.vpc1.subnet_ids
}

output "vpc_id_2" {
  value = module.vpc2.vpc_id
}

output "subnet_ids_2" {
  value = module.vpc2.subnet_ids
}