resource "aws_instance" "b8u8_ec2_instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_ami_id
  key_name      = var.ec2_key_pair

  vpc_security_group_ids = var.vpc_security_group_ids

  #Specify the EC2 user data using the cloud-init-userdata template file via our data sources tf specification
  user_data = data.template_file.cloud_init_user_data_file.rendered

  tags = merge(
    local.b8u8_common_tags,
    {
      Name = "b8u8_ec2_instance"
    }
  )
}
