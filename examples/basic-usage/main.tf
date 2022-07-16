#Set up some local values required to configure the AWS provider
locals {
  aws_region                   = "eu-west-2"
  aws_profile                  = "b8u8vscode"           #Change this to your own locally saved AWS CLI profile
  aws_shared_credentials_files = ["~/.aws/credentials"] #Change this to match your own local credentials file path
}

#Provider Configuration. The Module will use this configuration when called below
#Note: Alternatively this can also be configured using the providers meta-argument under module below
provider "aws" {
  region                   = local.aws_region
  profile                  = local.aws_profile
  shared_credentials_files = local.aws_shared_credentials_files
}

################################################################################
# B8U8 EC2 Module Call to create and EC2 Instance
################################################################################

module "b8u8_ec2" {
  source = "../../"

  ec2_instance_type      = "t2.micro"
  ec2_ami_id             = "ami-078a289ddf4b09ae0"
  ec2_key_pair           = "ubs-ec2-keypair-001"
  vpc_security_group_ids = ["sg-0043f179d3c4bb064", "sg-0765fdd3b023abbe5"]
}
################################################################################
# End of Example Basic Usage
################################################################################