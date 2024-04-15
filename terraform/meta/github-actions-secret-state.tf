resource "github_actions_secret" "state_google_credentials" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_GOOGLE_CREDENTIALS"
  plaintext_value = var.gcp_google_credentials
}
