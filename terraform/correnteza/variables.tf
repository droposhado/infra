variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "keepers" {
  type        = string
  description = "Base lock"
}

variable "onepassword_vault_uuid" {
  type        = string
  description = "1password uuid of vault used to store secrets"
}

variable "sentry_project_platform" {
  type        = string
  default     = "javascript"
  description = "Platform like language, framework"
}

variable "subdomain" {
  type        = string
  default     = "l"
  description = "subdomain used to host service"
}
