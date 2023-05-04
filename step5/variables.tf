# variable type definition
# for root module
variable "vpc_network_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for the subnets"
}