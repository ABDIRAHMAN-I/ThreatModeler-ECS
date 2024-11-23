variable "sg_name" {
  description = "security group name"
  type        = string
  default = "tm-sg"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID where the security group will be created"
  default = "vpc-id"
}