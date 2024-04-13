variable "cloudflare_api_token" {
  type        = string
  description = "Token with permissions defined in workspace to deploy dns, pages"
}

variable "github_token" {
  type        = string
  description = "Token to insert vars in action and insert webhooks"
}