variable "naming_prefix" {
  description = "prefix for resource naming"
  type        = string
}

variable "description" {
  description = "Description of the resource component being deployed"
  type        = string
}

variable "iaac_platform" {
  description = "Infrastructure-as-Code Platform"
  type        = string
}

variable "team" {
  description = "short name of team that own the components being deployed"
  type        = string
}

variable "product" {
  description = "name of product or software used by the project"
  type        = string
}

variable "project" {
  description = "name of the project"
  type        = string
}

variable "env" {
  description = "Environment - DEV | QA | PROD"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
}

variable "kms_key_deletion_window_in_days" {
  description = "deletion_window_in_days"
  type        = number
  default     = 90
}

variable "kms_key_enable_key_rotation" {
  description = "enable_key_rotation"
  type        = bool
  default     = true
}

variable "tf_provider_version_random" {
  description = "Terraform Provider version - Hashicorp/Random"
  type        = string
  default     = "3.6.3"
}

variable "kms_key_deletion_window_in_days" {
  description = "deletion_window_in_days"
  type        = number
  default     = 90
}

variable "dynamodb_default_read_capacity" {
  description = "read_capacity for 'lock state' DynamoDB Table"
  type        = number
  default     = 10
}

variable "dynamodb_default_write_capacity" {
  description = "write_capacity for 'lock state' DynamoDB Table"
  type        = number
  default     = 10
}