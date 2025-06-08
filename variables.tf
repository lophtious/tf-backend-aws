variable "naming_prefix" {
  description = "naming prefix for resource tagging"
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
  description = "Name of Team that owns the components being deployed or Stakeholder"
  type        = string
}

variable "product" {
  description = "name of product or software used by project"
  type        = string
}

variable "project" {
  description = "name of project"
  type        = string
}

variable "env" {
  description = "Environment - PROD | OPS | QA | DEV |"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
}
