variable "cluster_ca_certificate" {
  type = string
}

variable "cluster_default_namespace" {
  type = string
}

variable "cluster_endpoint" {
  type = string
}

variable "cluster_token" {
  type = string
}

variable "environment" {
  type        = string
  description = "Environment used in organization"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}
