variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "github_lp_repo" {
  type        = string
  default     = "lp"
  description = "Name of repository that host project with landing pages files"
}
