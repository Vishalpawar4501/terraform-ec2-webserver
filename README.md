# Terraform EC2 Web Server

Provision an Apache web server on AWS EC2 using Terraform (Infrastructure as Code).

## What it creates

- An EC2 instance in `ap-south-1` (Mumbai)
- A security group: HTTP (80) open to all, SSH (22) from my IP only
- Apache (`httpd`) installed automatically using `user_data`
- Output: public IP of the server

## Prerequisites

- Terraform installed (`terraform -v`)
- AWS CLI installed and configured (`aws configure`)
- AWS IAM user with EC2 permissions

## Usage

```bash
git clone https://github.com/Vishalpawar4501/terraform-ec2-webserver.git
cd terraform-ec2-webserver
terraform init
terraform plan
terraform apply
```

Open `http://<public_ip>` in a browser. It shows: **Hello from Terraform**

## Clean up

```bash
terraform destroy
```

## Troubleshooting notes

| Problem | Cause | Fix |
|---|---|---|
| ERR_CONNECTION_TIMED_OUT | Port 80 not open | Add inbound HTTP rule |
| ERR_CONNECTION_REFUSED | Apache not running | Install and start httpd |
| EC2 Instance Connect fails | Port 22 not open | Allow SSH from my IP |

## Security

Never commit `terraform.tfstate`, `*.tfvars` or AWS keys. See `.gitignore`.

## Author

**Vishal Pawar** - [GitHub](https://github.com/Vishalpawar4501)