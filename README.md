# Terraform Infrastructure - PrestaShop Deployment

This branch contains all Terraform code needed to provision AWS infrastructure for a two-tier PrestaShop deployment.

## Architecture

- **1 Web Server** (t2.micro): Hosts the PrestaShop application.
- **1 DB Server** (t2.micro): Hosts the MySQL database.
- **Amazon Linux 2** AMIs used for both instances.

## Resources Created

- EC2 Instances
- Security Groups (Open ports: 22, 80, 443, 3306 restricted to web server)
- Key Pairs (SSH)
- Output variables for connection with Ansible

## Key Files

```text
terraform/
├── main.tf               # EC2 and SG definitions
├── variables.tf          # Input variables
├── outputs.tf            # IPs and SSH outputs
├── provider.tf           # AWS provider and region setup
└── terraform.tfvars      # Variable values for provisioning
