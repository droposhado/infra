resource "github_actions_secret" "infra_cloudflare_api_token" {
  repository      = var.github_infra_repo
  secret_name     = "TF_VAR_cloudflare_api_token"
  plaintext_value = var.cloudflare_api_token
}

resource "github_actions_secret" "infra_github_token" {
  repository      = var.github_infra_repo
  secret_name     = "TF_VAR_github_token"
  plaintext_value = var.github_token
}
