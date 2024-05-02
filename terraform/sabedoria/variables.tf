variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcp_project_id" {
  type        = string
  description = "Project name slug used in GCP"
}

variable "gcp_region" {
  type        = string
  description = "GCP home region to use"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "image" {
  type        = string
  default     = "droposhado/sabedoria:latest"
  description = "sabedoria builded image to deploy"
}

variable "sentry_project_platform" {
  type        = string
  default     = "python-flask"
  description = "Platform like language, framework"
}
