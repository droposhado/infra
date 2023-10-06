variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "aws_regions" {
  type        = string
  description = "Comma separated list with regions"
}

variable "environment" {
  type        = string
  description = "Environment used in organization"
}
