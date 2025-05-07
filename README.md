# Outputs from Terraform are injected into the Ansible inventory for configuration.

---

### 🔹 `ansible` Branch – Server Configuration

```markdown
# Ansible Configuration - PrestaShop Deployment

This branch contains Ansible playbooks to configure the provisioned AWS instances and deploy PrestaShop.

## Configuration Overview

- Web server is installed with Apache, PHP, and PrestaShop.
- Database server is installed and configured with MySQL.
- Playbooks handle package installation, permissions, and setup pause for browser interaction.

## Key Playbooks

```text
ansible/
├── inventory                 # Hosts file with DB and Web server IPs
├── playbook.yml             # Main configuration playbook
├── bootstrap-phase-db.yml   # Bootstraps and prepares the DB server
├── group_vars/
│   └── db.yml               # Encrypted credentials and DB info
├── roles/ (optional)
│   ├── prestashop/          # Future modularization of app setup
│   └── mariadb/             # Future modularization of DB setup
└── .gitignore

---

## Usage:
ansible-playbook -i inventory bootstrap-phase-db.yml --ask-vault-pass
ansible-playbook -i inventory playbook.yml --ask-vault-pass

---

## The install folder is preserved temporarily to complete browser-based setup before being removed for security.
