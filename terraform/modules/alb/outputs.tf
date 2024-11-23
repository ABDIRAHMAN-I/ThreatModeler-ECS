output "http_listener" {
  description = "The ID of the HTTP Listener"
  value       = aws_lb_listener.listener_http
}

output "https_listener" {
  description = "The ID of the HTTPS Listener"
  value       = aws_lb_listener.listener_https
}

output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.tm-lb.dns_name
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.tm-tg.id
}