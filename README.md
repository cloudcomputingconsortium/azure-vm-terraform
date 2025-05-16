# Secure Azure VM – Terraform & Bicep GitHub Repository

This repository provides a secure, compliant, and automated deployment of an Azure Virtual Machine using both **Terraform** and **Bicep**, aligned to:

- ✅ FedRAMP High
- ✅ CIS Microsoft Azure Foundations Benchmark
- ✅ NIST SP 800-53 & ISO 27001

## 🔐 Security & Compliance Features

- Trusted launch VM with Secure Boot, vTPM
- NSG: Deny all inbound by default
- Encrypted Storage Account, TLS 1.2, HTTPS only
- Monitoring via Log Analytics
- Azure Policy for tag enforcement
- Auto-shutdown & immutable backup vault

## 📁 Folder Structure

```
.
├── terraform/                  # Modular Terraform code
│   ├── main.tf                # Root module usage
│   ├── variables.tf           # Input variables
│   ├── backend.tf             # Remote state configuration
│   └── modules/               # NSG, Policy modules
├── .github/workflows/         # CI/CD pipelines for validation & deployment
│   ├── terraform.yml
│   └── terraform-validation.yml
├── Secure Vm Bicep.bicep      # Full secure Bicep deployment (1:1 with Terraform)
└── README.md
```

## 🚀 Deployment Options

### Terraform

```bash
terraform init -backend-config="..."  # Configure backend
terraform plan
terraform apply
```

### GitHub CLI

```bash
gh repo create secure-azure-vm --public --source=. --remote=origin --push
```

## ✅ CI/CD Integration

- GitHub Actions: auto-validation (fmt, validate, tflint, checkov)
- Deployment pipeline auto-triggers on PR/push

## 🧪 Branch Protection (Recommended)

Enable in GitHub:
- Require PR review
- Require status checks (terraform-validation)

