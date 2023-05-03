# output.tf

# VPC_ID
output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.main.id
}

# Subnet_ID
output "subnet_ids" {
  description = "Subnet ID"
  value = values(aws_subnet.terraform-subnet)[*].id
}
