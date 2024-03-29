variable "account_id" {
  type = string
}

variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "default_ttl" {
  type = string
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "environment" {
  type        = string
  description = "Default environment to workspaces"
}
