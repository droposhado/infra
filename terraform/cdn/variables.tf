variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}
