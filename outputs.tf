output "instance_public_ip" {
  description = "Public IP of the PrestaShop server"
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_server.id
}

output "db_instance_private_ip" {
  description = "Private IP of the database server instance"
  value       = aws_instance.db_server.private_ip
}

output "ssh_connection" {
  description = "SSH command to connect to the web server"
  value       = "ssh -i ~/.ssh/prestashop-key ubuntu@${aws_instance.web_server.public_ip}"
}