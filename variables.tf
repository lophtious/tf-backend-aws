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
