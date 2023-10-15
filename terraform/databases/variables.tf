variable "allocated_storage" {
  type    = number
  default = 20
}

variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "environment" {
  type        = string
  description = "Default environment to workspaces"
}

variable "maintenance_window_dow" {
  type    = string
  default = "sunday"
}

variable "maintenance_window_time" {
  type    = string
  default = "06:00:00"
}
