output "instance_public_ip" {
  description = "List of public IP addresses of the web server instances."
  value       = aws_instance.web_server[*].public_ip
}

output "load_balancer_dns" {
  description = "DNS name of the load balancer."
  value       = aws_lb.web_lb.dns_name
}