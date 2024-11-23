variable "alb-name" {
  description = "Name of the ALB"
  type        = string
  default     = "tm-lb"
}

variable "security_group_id" {
  description = "Security Group ID for the ALB"
  type        = string
}

variable "subnet_ids" {
  description = "List of Subnet IDs for the ALB"
  type        = list(string)
}

variable "target-group-name" {
  description = "Name of the target group"
  type        = string
  default     = "tm-target-group"
}

variable "target_group_arn" {
  description = "the arn for the target group"
  type = string
}

variable "target_port" {
  description = "Port for the target group"
  type        = number
  default = 3000
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate for the ALB"
  type        = string
  default     = "arn:aws:acm:eu-west-2:977098994448:certificate/8f2c2d38-7b39-4f77-80be-05be07c306c2" 

}