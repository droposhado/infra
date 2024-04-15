resource "github_actions_secret" "infra_cloudflare_api_token" {
  repository      = var.github_infra_repo
  secret_name     = "CLOUDFLARE_API_TOKEN"
  plaintext_value = var.cloudflare_api_token
}
