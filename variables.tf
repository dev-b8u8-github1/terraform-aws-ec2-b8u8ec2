variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The EC2 instance type to use"
}

variable "ec2_ami_id" {
  type        = string
  default     = "ami-078a289ddf4b09ae0"
  description = "The AMI ID for our EC2 instances"
}

variable "ec2_key_pair" {
  type        = string
  default     = "ubs-ec2-keypair-001"
  description = "The name of the key pair to use for SSH into the VM"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  default     = []
  description = "The list of security groups for our instance"
}