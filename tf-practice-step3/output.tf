# terraformで作成したリソースの参照情報
# valueには、resourceブロックで出力された値のみが指定可能

# applyした時にSecurityGroupのIDを表示させる
output "security_group_id" {
  value = aws_security_group.tf_pr3_sg.id
}

# subnetの情報から、subnetIDだけ取得したい場合の処理にはforを使用する
# value.の後ろを変更することで、それぞれの値のみを表示させることができる
output "subnet_information" {
  value = [ for value in aws_subnet.tf_pr3_subnet : value.arn]
  # value = aws_subnet.tf_pr3_subnet
}