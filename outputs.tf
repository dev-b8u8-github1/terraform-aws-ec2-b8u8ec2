output "b8u8_ec2_instance_public_ip" {
  value       = aws_instance.b8u8_ec2_instance.public_ip
  description = "The Public IP Address of our VM"
}

output "b8u8_ec2_instance_web_url" {
  value       = "http://${aws_instance.b8u8_ec2_instance.public_dns}"
  description = "The non-secure web URL to reach our web server"
}