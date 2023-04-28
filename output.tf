# terraformで作成したリソースの参照情報
# valueには、resourceブロックで出力された値のみが指定可能

# applyした時にSecurityGroupのIDを表示させる
output "security_group_id" {
  value = aws_security_group.tf_pr3_sg.id
}