output "vpc_id" {
  description = "the ID of the vpc"
    value = aws_vpc.tm_vpc.id
  
}

output "public_subnets" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.tm_subnet[*].id
}

