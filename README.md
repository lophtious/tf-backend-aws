# Terraform Module: <tf-backend-aws>

[![License](https://img.shields.io/github/license/<ORG>/<REPO>.svg)](LICENSE)
[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D%200.13-purple.svg)](https://www.terraform.io/)

## Overview

This Terraform module provisions an AWS S3 backend to store Terraform state for persistency. The S3 bucket is configured with versioning and server-side encrypting using Custom Managed AWS KMS key.

## Usage

```hcl
module "tf-backend-aws" {
  source  = "github.com/lophtious/tf-backend-aws"
  
  # Example variables
  name            = "example-name"
  region          = "us-east-1"
  enable_feature  = true
}
