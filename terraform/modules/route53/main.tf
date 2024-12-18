resource "aws_route53_zone" "tm_lab_zone" {
  name = var.zone_name
}

resource "aws_route53_record" "tm_cname_record" {
  zone_id = aws_route53_zone.tm_lab_zone.id
  name    = var.record_name
  type    = var.record_type
  ttl     = var.ttl
  records = [var.alb_dns_name]
}