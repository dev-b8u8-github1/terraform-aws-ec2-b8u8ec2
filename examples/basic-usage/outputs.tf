output "ec2_public_ip" {
  value       = module.b8u8_ec2.b8u8_ec2_instance_public_ip
  description = "The Public IP Address of our VM"
}

output "ec2_instance_web_url" {
  value       = module.b8u8_ec2.b8u8_ec2_instance_web_url
  description = "The non-secure web URL to reach our web server"
}