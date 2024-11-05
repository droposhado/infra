variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "github_hightower_repo" {
  type        = string
  default     = "hightower"
  description = "Name of repository that host project with landing pages files"
}
