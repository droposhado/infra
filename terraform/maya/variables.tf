variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "flask_app" {
  type        = string
  default     = "maya:create_app(\"maya.config.ProductionConfig\")"
  description = "Project name slug used in GCP"
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
  default     = "droposhado/maya:latest"
  description = "maya builded image to deploy"
}

variable "port" {
  type        = string
  default     = 5000
  description = "default port to use service"
}

variable "sentry_project_platform" {
  type        = string
  default     = "python-flask"
  description = "Platform like language, framework"
}

variable "subdomain" {
  type        = string
  default     = "health"
  description = "subdomain used to host service"
}
