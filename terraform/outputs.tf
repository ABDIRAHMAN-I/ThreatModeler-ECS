output "listener_http_arn" {
  description = "ARN of the http listner"
  value       = module.alb.http_listener

}

output "listener_https_arn" {
  description = "ARN of the https listner"
  value       = module.alb.https_listener

}