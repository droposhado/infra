variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "keepers" {
  type        = string
  description = "Base lock"
}

variable "subdomain" {
  type        = string
  default     = "cdn"
  description = "subdomain used to host service"
}
