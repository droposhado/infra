variable "app_name" {
  type        = string
  default     = "droposhado-wooka"
  description = "Application name in Fly.io"
}

variable "fly_token" {
  type        = string
  description = "Token used to sync secrets between Doppler and Fly.io"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "keepers" {
  type        = string
  description = "Base lock"
}

variable "sentry_project_platform" {
  type        = string
  default     = "python"
  description = "Platform like language, framework"
}

variable "wooka_bot_admins" {
  type        = string
  description = "Admins URIs separeted by comma (ex. username@host.org)"
}

variable "wooka_bot_prefix" {
  type        = string
  default     = "!"
  description = "Default prefix to bot commands"
}

variable "wooka_chatroom_fn" {
  type        = string
  description = "Name used in chatroom"
}

variable "wooka_chatroom_presence" {
  type        = string
  description = "URI of XMPP room (username@host.org/roomname), comma separated password if exists"
}

variable "wooka_chatroom_password" {
  type        = string
  description = "password to protected room"
}

variable "wooka_xmpp_username" {
  type        = string
  description = "XMPP username"
}

variable "wooka_xmpp_password" {
  type        = string
  description = "XMPP password"
}
