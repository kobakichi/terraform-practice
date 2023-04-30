variable "dev" {
  type = bool
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_cidrs" {
  type = list(string)
}

variable "subnet_tags" {
  type = map(string)

  default = {
    "dummy" = "dummy"
  }
}