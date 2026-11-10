output "public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  value = aws_instance.web_server.id
}