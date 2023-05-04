# variable type definition
# for child modules

variable "vpc_cidr" {
  type = string
  description = "VPC CIDRS"
}

variable "subnet_cidrs" {
  type = list(string)
  description = "subnet CIDRS"
}