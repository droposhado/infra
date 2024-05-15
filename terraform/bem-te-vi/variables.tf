variable "bemtevi_webdav_server" {
  type        = string
  description = "Server address to conect"
}

variable "bemtevi_webdav_adressbook" {
  type        = string
  description = "Is a path of server to conect"
}

variable "bemtevi_webdav_username" {
  type        = string
  description = "Username to conect on server"
}

variable "bemtevi_webdav_password" {
  type        = string
  description = "Password to conect on server"
}

variable "bemtevi_webhook_url" {
  type        = string
  description = "Slack compatible webhook"
}

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
  default     = "droposhado/bem-te-vi@sha256:22b05b06874ed85d9bb98d2958034a5a9e7c3c6d3c0cf1c87af5d57ec4d83408"
  description = "bem-te-vi builded image to deploy"
}
