variable "zone_name" {
  type        = string
}

variable "record_name" {
  type        = string
}

variable "record_type" {
  type = string
  default = "CNAME"
  
}

variable "alb_dns_name" {
  type        = string
}

variable "lb_zone_id" {
  type        = string
}

variable "ttl" {
  type        = number
  description = "Time to live for the DNS record"
}
