variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "github_blog_repo" {
  type        = string
  default     = "blog"
  description = "Name of repository that host project with blog files"
}
