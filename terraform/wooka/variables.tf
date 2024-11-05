variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "image_url" {
  type    = string
  default = "droposhado/wooka"
}

variable "image_tag" {
  type    = string
  default = "latest"
}

variable "render_plan" {
  type    = string
  default = "starter"
}

variable "render_region" {
  type    = string
  default = "oregon"
}

variable "sentry_project_platform" {
  type        = string
  default     = "python"
  description = "Platform like language, framework"
}

variable "wooka_bot_admins" {
  type = string
}

variable "wooka_chatroom_presence" {
  type = string
}

variable "wooka_xmpp_username" {
  type = string
}

variable "wooka_xmpp_password" {
  type = string
}
