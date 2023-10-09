variable "account_id" {
  type = string
}

variable "domain" {
  type = string
}

variable "records" {
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    value   = string
    proxied = bool
  }))
}
