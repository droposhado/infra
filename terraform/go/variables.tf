variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "github_repo" {
  type        = string
  default     = "go"
  description = "Name of repository that host project with files"
}

variable "subdomain" {
  type        = string
  default     = "go"
  description = "subdomain used to host service"
}