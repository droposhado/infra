variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "sentry_project_platform" {
  type        = string
  default     = "javascript"
  description = "Platform like language, framework"
}

variable "subdomain" {
  type        = string
  default     = "i.am"
  description = "subdomain used to host service"
}
