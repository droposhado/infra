variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "github_maps_repo" {
  type        = string
  default     = "maps"
  description = "Name of repository that host project with landing pages files"
}

variable "subdomain" {
  type        = string
  default     = "maps"
  description = "subdomain used to host service"
}
