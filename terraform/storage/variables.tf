variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "environment" {
  type        = string
  description = "Environment used in organization"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}
