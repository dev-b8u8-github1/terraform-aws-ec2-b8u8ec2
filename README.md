Terraform Module to Provision an EC2 Instance running Apache\
Not intendend for production use please\
Just showcasing how to create a public module on Terraform

## Usage
```hcl
module "my_vm" {
  source = "terraform-aws-modules/ec2/b8u8ec2"
  ec2_instance_type      = "t2.micro"
  ec2_ami_id             = "ami-078a289ddf4b09ae0"
  ec2_key_pair           = "ubs-ec2-keypair-001"
  vpc_security_group_ids = ["sg-0043f179d3c4bb064", "sg-0765fdd3b023abbe5"]
}

#Sample Output
output "ec2_instance_web_url" {
  value       = module.my_vm.b8u8_ec2_instance_web_url
  description = "The non-secure web URL to reach our web server VM"
}
```

## Usage with Count Meta-Argument
```hcl
module "my_vm" {
  source = "terraform-aws-modules/ec2/b8u8ec2"
  count = 3
  ec2_instance_type      = "t2.micro"
  ec2_ami_id             = "ami-078a289ddf4b09ae0"
  ec2_key_pair           = "ubs-ec2-keypair-001"
  vpc_security_group_ids = ["sg-0043f179d3c4bb064", "sg-0765fdd3b023abbe5"]
}

#Sample Output. Note the splat (*)
output "ec2_instance_web_url" {
  value       = module.my_vm.*.b8u8_ec2_instance_web_url
  description = "The non-secure web URLs to reach our web server VMs"
}
```