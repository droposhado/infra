variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "subdomain" {
  type        = string
  default     = "metropole"
  description = "subdomain used to host service"
}
