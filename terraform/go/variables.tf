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
  default     = "droposhado/go:latest"
  description = "go builded image to deploy with custom sally.yml"
}

variable "port" {
  type        = string
  default     = 8080
  description = "default port to use service"
}

variable "subdomain" {
  type        = string
  default     = "go"
  description = "subdomain used to host service"
}
