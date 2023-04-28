# # # terraformで作成したリソースの参照情報
# # output "vpc_id" {
# #   # value       = aws_vpc.tf_test.id
# #   # description = "main.tfのvpc_id"
# }

# output "vpc_arn" {
#   value       = aws_vpc.tf_test.arn
#   description = "vpcのarn情報"
# }

# # 最後の属性名を指定しないと、全ての属性が取得できる
# output "subnet" {
#   # value = aws_subnet.tf_test
# }