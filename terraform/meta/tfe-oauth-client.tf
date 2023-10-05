resource "tfe_oauth_client" "github" {
  name             = "github-oauth-client"
  organization     = tfe_organization.main.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_token
  service_provider = "github"
}
