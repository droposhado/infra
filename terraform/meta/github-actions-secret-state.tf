resource "github_actions_secret" "state_google_credentials" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_GOOGLE_CREDENTIALS"
  plaintext_value = var.gcp_google_credentials
}

resource "github_actions_secret" "state_gcs_bucket" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_GCS_BUCKET"
  plaintext_value = google_storage_bucket.state.name
}