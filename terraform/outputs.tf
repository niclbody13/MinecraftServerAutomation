output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.minecraft.id
}

output "private_key" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true
}