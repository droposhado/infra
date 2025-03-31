variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "subdomain" {
  type        = string
  default     = "go"
  description = "subdomain used to host service"
}
