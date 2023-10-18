resource "github_actions_secret" "sabedoria_db_host" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_HOST"
  plaintext_value = ""
}

resource "github_actions_secret" "sabedoria_db_port" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_PORT"
  plaintext_value = ""
}

resource "github_actions_secret" "sabedoria_db_name" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_NAME"
  plaintext_value = local.sabedoria.name
}

resource "github_actions_secret" "sabedoria_db_username" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_USER"
  plaintext_value = local.sabedoria.admin.username
}

resource "github_actions_secret" "sabedoria_db_password" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_PASS"
  plaintext_value = local.sabedoria.admin.password
}

resource "github_actions_secret" "sabedoria_aws_secret_access_key" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_AWS_SECRET_ACCESS_KEY"
  plaintext_value = aws_iam_access_key.sabedoria.secret
}

resource "github_actions_secret" "sabedoria_aws_access_key_id" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_AWS_ACCESS_KEY_ID"
  plaintext_value = aws_iam_access_key.sabedoria.id
}

resource "github_actions_secret" "sabedoria_bucket_endpoint" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_BUCKET_ENDPOINT"
  plaintext_value = local.sabedoria.bucket.bucket_regional_domain_name
}

resource "github_actions_secret" "sabedoria_bucket_name" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_BUCKET_NAME"
  plaintext_value = local.sabedoria.bucket.id
}
