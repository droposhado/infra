resource "github_actions_secret" "infra_private" {
  repository      = var.github_infra_repo
  secret_name     = "CLOUDFLARE_ACCOUNT_ID"
  plaintext_value = data.cloudflare_zone.main.account_id
}

resource "github_actions_secret" "infra_public" {
  repository      = var.github_infra_public_repo
  secret_name     = "CLOUDFLARE_ACCOUNT_ID"
  plaintext_value = data.cloudflare_zone.main.account_id
}
