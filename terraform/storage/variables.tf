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

variable "tags" {
  type        = map(string)
  description = "Default tags for this resource"
  default = {
    workspace   = "buckets"
    environment = var.environment
    region      = var.aws_region_default
  }
}
