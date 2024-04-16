variable "cloudflare_zone_id" {
  type = string
}

variable "default_ttl" {
  type = string
}

variable "domain" {
  type = string
}

variable "mailgun_dkim_key_size" {
  type    = number
  default = 2048
}

variable "mailgun_region" {
  type    = string
  default = "us"
}

variable "mailgun_spam_action" {
  type    = string
  default = "disabled"
}

variable "mailgun_username" {
  type    = string
  default = "no-reply"
}

variable "subdomain" {
  type = string
}
