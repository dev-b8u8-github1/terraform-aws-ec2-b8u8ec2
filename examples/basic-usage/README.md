# Simple Basic use case

Example use case with sensible defaults\
Note: This is NOT intendend for production use please
Just showcasing how to create a module on Terraform\


## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22.0 |


## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_b8u8_ec2"></a> [b8u8_ec2](#module\b8u8_ec2) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_public_ip"></a> [ec2_public_ip](#output\ec2_public_ip) | The Public IP Address of our VM |