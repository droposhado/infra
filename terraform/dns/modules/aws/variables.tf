variable "domain" {
  type = string
}

variable "records" {
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
}
