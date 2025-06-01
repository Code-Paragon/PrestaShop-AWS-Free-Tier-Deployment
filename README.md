#  PrestaShop AWS Free Tier Deployment

A complete Infrastructure-as-Code (IaC) project to deploy and configure a **PrestaShop** e-commerce platform using **Terraform** and **Ansible** on AWS Free Tier.

---

##  Project Structure

| Branch      | Purpose                                         |
|-------------|-------------------------------------------------|
| `main`      | Documentation & overview                        |
| `terraform` | AWS infrastructure provisioning (EC2, SGs)      |
| `ansible`   | Software installation & app configuration       |

---

##  Live Demo

- **Access:** [http://<your-public-ip>](http://<your-public-ip>)
-  Replace `<your-public-ip>` with the actual public IP of your EC2 instance.

---

##  Tech Stack

- **Terraform** – Infrastructure provisioning on AWS
- **Ansible** – Configuration management and PrestaShop installation
- **Amazon EC2 (Free Tier)** – Hosting environment

---

##  Getting Started

1. **Clone the repo and switch to the `terraform` branch**
    ```bash
    git checkout terraform
    terraform init && terraform apply
    ```

2. **After provisioning, switch to the `ansible` branch and run configuration:**
    ```bash
    git checkout ansible
    ansible-playbook playbook.yml -i hosts
    ```
