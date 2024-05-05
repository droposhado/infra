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

variable "slug_size" {
  type        = number
  default     = 5
  description = "size of chars to use on slug"
}

variable "subdomain" {
  type        = string
  default     = "l"
  description = "subdomain used to host service"
}
