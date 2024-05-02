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

variable "wooka_bot_admins" {
  type = string
}

variable "wooka_bot_alt_prefixes" {
  type = string
}

variable "wooka_zulip_email" {
  type = string
}

variable "wooka_zulip_key" {
  type = string
}

variable "wooka_zulip_site" {
  type = string
}
