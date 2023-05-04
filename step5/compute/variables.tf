# EC2 ami
variable "ec2_ami" {
  type        = string
  description = "EC2 instance AMI ID"
}

# instance type
variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

# subnet
variable "subnet_ids" {
  type = string
  description = "EC2 Subnet"
}

