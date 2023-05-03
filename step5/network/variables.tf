# variable type definition
# child modules

variable "vpc_cidr" {
  type = string
  description = "VPC CIDR"
}

variable "subnet_cidrs" {
  type = list(string)
  description = "subnet CIDRS"
}