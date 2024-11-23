output "lb_zone_id" {
    description = "value"
    value = "ZO567715SB6KJ5D1HKO"
  
}


output "aws_route53_record" {
    description = "the created route53 record name"
    value = aws_route53_record.tm_cname_record
  
}

