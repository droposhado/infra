variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcp_region" {
  type        = string
  description = "GCP home region to use"
}

variable "sentry_project_platform" {
  type        = string
  default     = "python-flask"
  description = "Platform like language, framework"
}