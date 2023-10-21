variable "bucket_id" {
  type = string
}

variable "default_ttl" {
  type = string
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "fqdn" {
  type = string
}

variable "environment" {
  type        = string
  description = "Default environment to workspaces"
}
