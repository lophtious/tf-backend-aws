# Terraform Module: <tf-backend-aws>

[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D%200.13-purple.svg)](https://www.terraform.io/)

## Overview

This Terraform module provisions an AWS S3 backend to store Terraform state for persistency. The S3 bucket is configured with versioning and server-side encrypting using Custom Managed AWS KMS key.

## Features

- [x] Compatible with Terraform `>= 0.13`
- [x] Supports common AWS best practices
- [x] Easily configurable and reusable

## Usage

```hcl
module "tf-backend-aws" {
  source          = "github.com/lophtious/tf-backend-aws"
  
  # Example variable
  naming_prefix   = var.naming_prefix
  product         = var.product
  project         = var.project
  iaac_platform   = var.iaac_platform
  region          = var.region
  description     = var.description
  env             = var.env
  team            = var.team
}
```

## Example

cd examples/basic
terraform init
terraform apply

---

## Folder Structure

```
├── README.md
├── dynamodb.tf
├── kms.tf
├── main.tf
├── outputs.tf
├── random.tf
├── s3.tf
└── variables.tf
```

Let me know if you'd like it tailored to a specific cloud provider (e.g., AWS, Azure, GCP), or if you want me to generate the `Inputs`/`Outputs` table from your Terraform code.
