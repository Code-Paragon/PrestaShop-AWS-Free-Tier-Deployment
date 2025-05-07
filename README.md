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
ansible-playbook -i inventory bootstrap-phase-db.yml --ask-vault-pass
ansible-playbook -i inventory playbook.yml --ask-vault-pass

---

## The install folder is preserved temporarily to complete browser-based setup before being removed for security.
