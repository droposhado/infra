resource "github_actions_secret" "trakttv_aws_secret_access_key" {
  repository      = var.github_infra_repo
  secret_name     = "TRAKTTV_AWS_SECRET_ACCESS_KEY"
  plaintext_value = b2_application_key.trakttv.application_key
}

resource "github_actions_secret" "trakttv_aws_access_key_id" {
  repository      = var.github_infra_repo
  secret_name     = "TRAKTTV_AWS_ACCESS_KEY_ID"
  plaintext_value = b2_application_key.trakttv.application_key_id
}

resource "github_actions_secret" "trakttv_bucket_endpoint" {
  repository      = var.github_infra_repo
  secret_name     = "TRAKTTV_BUCKET_ENDPOINT"
  plaintext_value = data.b2_account_info.acc.s3_api_url
}

resource "github_actions_secret" "trakttv_bucket_name" {
  repository      = var.github_infra_repo
  secret_name     = "TRAKTTV_BUCKET_NAME"
  plaintext_value = b2_bucket.trakttv.bucket_name
}
