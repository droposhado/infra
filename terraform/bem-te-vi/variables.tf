variable "bemtevi_contact_display_name" {
  type        = string
  description = "Name of addressbook"
}

variable "bemtevi_webdav_password" {
  type        = string
  description = "Password to conect on server"
}

variable "bemtevi_webdav_server" {
  type        = string
  description = "Server address to conect"
}

variable "bemtevi_webdav_username" {
  type        = string
  description = "Username to conect on server"
}

variable "bemtevi_webhook_url" {
  type        = string
  description = "Slack compatible webhook"
}

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
