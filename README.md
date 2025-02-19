# ChronoBastion & DateTimeAPI

![AWS](https://img.shields.io/badge/AWS-Terraform-blue)
![EC2](https://img.shields.io/badge/EC2-Bastion%20Host-orange)
![FastAPI](https://img.shields.io/badge/FastAPI-Framework-green)
![Docker](https://img.shields.io/badge/Docker-Containerization-blue)
![Python](https://img.shields.io/badge/Python-3.9-blue)

## 📌 Overview
This repository contains two separate projects:

### 1️⃣ **ChronoBastion** - Terraform Configuration for Bastion Host
ChronoBastion is an **AWS-based Bastion Host deployment** using **Terraform**. It sets up a secure **jump server** that enables SSH access to private EC2 instances within a VPC. This ensures a controlled and audited access point for system administrators.

### 2️⃣ **DateTimeAPI** - FastAPI-based Date/Time API
DateTimeAPI is a simple **FastAPI-based service** that exposes an endpoint to return the **current UTC date and time**. The application is fully **Dockerized** for easy deployment.

---

## 🚀 Features
### ✅ ChronoBastion
- **Automated Infrastructure Deployment** via **Terraform**
- **Secure Access** to EC2 instances in a private subnet
- **IAM-based Access Control**
- **Configurable Security Groups**
- **Key Pair Authentication**
- **Multi-Region Support**

### ✅ DateTimeAPI
- **FastAPI framework** for high performance
- **Simple RESTful API** for date/time retrieval
- **Dockerized** for seamless deployment
- **Minimal dependencies** for lightweight execution

---

## 🛠 Tech Stack
- ![Terraform](https://img.shields.io/badge/Terraform-IaC-blue) **Terraform** 🏗️ (Infrastructure as Code)
- ![AWS](https://img.shields.io/badge/AWS-Cloud-orange) **AWS EC2** ☁️ (Compute)
- ![VPC](https://img.shields.io/badge/VPC-Networking-blue) **AWS VPC** 🌐 (Networking)
- ![IAM](https://img.shields.io/badge/IAM-Security-yellow) **AWS IAM** 🔒 (Access Control)
- ![SecurityGroups](https://img.shields.io/badge/SecurityGroups-Firewall-red) **Security Groups** 🛡️ (Firewall Rules)
- ![FastAPI](https://img.shields.io/badge/FastAPI-Framework-green) **FastAPI** ⚡ (Web Framework)
- ![Docker](https://img.shields.io/badge/Docker-Containerization-blue) **Docker** 🐳 (Containerization)
- ![Python](https://img.shields.io/badge/Python-3.11-blue) **Python 3.11+** 🐍 (Programming Language)

---

## 🔧 Setup & Installation
### 1️⃣ Clone the Repository
```sh
$ git clone https://github.com/RamishUrRehman007/ChronoBastion.git
$ cd ChronoBastion
```

### 2️⃣ Update Terraform Variables (ChronoBastion)

```sh
$ cd terraform-bastion
```

Modify `terraform.tfvars`:
```hcl
vpc_id = "vpc-xxxxxxxxxxxxxxxxx"
public_subnet_id = "subnet-xxxxxxxxxxxxxxxxx"
key_name = "chrono-bastion-key-pair"
region = "eu-central-1"
```

### 3️⃣ Deploy Terraform (ChronoBastion)
```sh
$ terraform init
$ terraform plan \
  -var "vpc_id=vpc-0556f613763c4ddbc" \
  -var "public_subnet_id=subnet-0d90f11091bf00bae" \
  -var "key_name=chrono-bastion-key-pair"
$ terraform apply \
  -var "vpc_id=vpc-0556f613763c4ddbc" \
  -var "public_subnet_id=subnet-0d90f11091bf00bae" \
  -var "key_name=chrono-bastion-key-pair"
```
> Type `yes` to confirm deployment.

### 4️⃣ Retrieve Bastion Host Public IP
```sh
$ terraform output bastion_ip
```

![Docker](images/aws.PNG)
---

## ⏰ Running DateTimeAPI
### 1️⃣ Build and Run with Docker
```sh
$ cd ..
$ docker-compose up
```

### 2️⃣ API Endpoints
- **Get Current Date/Time:**
![Docker](images/api.PNG)


---

## 📌 Destroying the Infrastructure
To remove all resources:
```sh
$ terraform destroy
```
> Type `yes` to confirm.


## 🔜 Roadmap
- [ ] Implement auto-scaling for the Bastion Host
- [ ] Add CloudWatch monitoring
- [ ] Enhance API with timezone support
- [ ] Support for additional authentication methods (MFA, VPN)

## 📜 License
MIT License. See `LICENSE` file for details.

## 📩 Contact
📧 Email: ramish@yourdomain.com  
🐦 Twitter: [@RamishUrRehman](https://twitter.com/RamishUrRehman)  

---
**ChronoBastion & DateTimeAPI** - Secure AWS infrastructure & timekeeping API. 🚀
