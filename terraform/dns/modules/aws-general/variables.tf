variable "environment" {
  type        = string
  description = "Default environment to workspaces"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "records" {
  type = list(object({
    name   = string,
    values = list(string),
    type   = string,
    ttl    = number
  }))
}
