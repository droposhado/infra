resource "github_actions_secret" "cloudflare_account_id" {
  repository      = var.github_lp_repo
  secret_name     = "CLOUDFLARE_ACCOUNT_ID"
  plaintext_value = data.cloudflare_zone.main.account_id
}

resource "github_actions_secret" "cloudflare_api_token" {
  repository      = var.github_lp_repo
  secret_name     = "CLOUDFLARE_API_TOKEN"
  encrypted_value = base64encode(local.cloudflare_project_token)
}

resource "github_actions_secret" "cloudflare_project_name" {
  repository      = var.github_lp_repo
  secret_name     = "CLOUDFLARE_PROJECT_NAME"
  plaintext_value = local.cloudflare_project_name
}
