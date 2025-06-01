# Outputs from Terraform are injected into the Ansible inventory for configuration.

---

### 🔹 `ansible` Branch – Server Configuration

# Ansible Configuration - PrestaShop Deployment

This branch contains Ansible playbooks to configure the provisioned AWS instances and deploy PrestaShop.

## Configuration Overview

- Web server is installed with Apache, PHP, and PrestaShop.
- Database server is installed and configured with MySQL.
- Playbooks handle package installation, permissions, and setup pause for browser interaction.

## Key Playbooks

```text
ansible/
├── inventory
├── playbook.yml
├── group_vars/
│   └── all.yml
├── roles/
│   ├── prestashop/
│   │   ├── tasks/
│   │   │   └── main.yml
│   │   └── templates/
│   │       └── apache-config.j2
│   └── mariadb/
│       ├── tasks/
│       │   └── main.yml
│       └── templates/
│           └── mariadb.cnf.j2
└── .gitignore

---

## Usage:
inventory should look like
[web]
13.245.35.112 ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/prestashop-key

[db]
172.31.28.203 ansible_user=ubuntu ansible_ssh_private_key_file=/home/retro/.ssh/prestashop-key ansible_ssh_common_args='-o ProxyCommand="ssh -i ~/.ssh/prestashop-key -W %h:%p ubuntu@13.245.35.112"'

First input the Web Server public IP and the Database Private IP into the inventory file then:

ansible-playbook -i inventory bootstrap-phase-db.yml

then 
create group_vars/db.yml(example):

mysql_login_user: debian-sys-maint
mysql_login_password: n9sM8AKyAgeFxt0J
prestashop_db_password: StrongPassword123!

ecrypt it with:

ansible-vault encrypt group_vars/db.yml

finally run:

ansible-playbook -i inventory playbook.yml --ask-vault-pass

---

## The install folder is preserved temporarily to complete browser-based setup before being removed for security.
