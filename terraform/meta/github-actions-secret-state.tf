resource "github_actions_secret" "state_aws_default_region" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_AWS_DEFAULT_REGION"
  plaintext_value = var.b2_default_region
}

resource "github_actions_secret" "state_aws_access_key_id" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_AWS_ACCESS_KEY_ID"
  plaintext_value = b2_application_key.state.application_key_id
}

resource "github_actions_secret" "state_aws_secret_access_key" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_AWS_SECRET_ACCESS_KEY"
  plaintext_value = b2_application_key.state.application_key
}

resource "github_actions_secret" "state_sabedoria_bucket_endpoint" {
  repository      = var.github_infra_repo
  secret_name     = "STATE_AWS_ENDPOINT_URL_S3"
  plaintext_value = data.b2_account_info.main.s3_api_url
}

resource "github_actions_secret" "state_aws_s3_bucket" {
  repository      = var.github_infra_repo
  secret_name     = "AWS_S3_BUCKET"
  plaintext_value = b2_bucket.state.bucket_name
}