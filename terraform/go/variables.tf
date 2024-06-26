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
  default     = "droposhado/go@sha256:36baa976288647a455ebf248119c54b77acd0e1a783f421fb81b21f2185a34b5"
  description = "go builded image to deploy with custom sally.yml"
}

variable "port" {
  type        = string
  default     = 8080
  description = "default port to use service"
}

variable "subdomain" {
  type        = string
  default     = "go.pkg"
  description = "subdomain used to host service"
}
