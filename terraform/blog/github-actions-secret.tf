resource "github_actions_secret" "cloudflare_account_id" {
  repository      = var.blog_repo
  secret_name     = "CLOUDFLARE_ACCOUNT_ID"
  plaintext_value = local.cloudflare_account_id
}

resource "github_actions_secret" "cloudflare_api_token" {
  repository      = var.blog_repo
  secret_name     = "CLOUDFLARE_API_TOKEN"
  plaintext_value = local.cloudflare_api_token
}

resource "github_actions_secret" "cloudflare_project_name" {
  repository      = var.blog_repo
  secret_name     = "CLOUDFLARE_PROJECT_NAME"
  plaintext_value = local.cloudflare_project_name
}
