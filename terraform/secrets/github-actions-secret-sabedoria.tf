resource "github_actions_secret" "sabedoria_db_host" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_HOST"
  plaintext_value = module.aiven_pg.host
}

resource "github_actions_secret" "sabedoria_db_port" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_PORT"
  plaintext_value = module.aiven_pg.port
}

resource "github_actions_secret" "sabedoria_db_name" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_NAME"
  plaintext_value = postgresql_database.sabedoria.name
}

resource "github_actions_secret" "sabedoria_db_username" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_USER"
  plaintext_value = postgresql_role.sabedoria.name
}

resource "github_actions_secret" "sabedoria_db_password" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_PASS"
  plaintext_value = random_password.sabedoria.result
}

resource "github_actions_secret" "sabedoria_aws_secret_access_key" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_AWS_SECRET_ACCESS_KEY"
  plaintext_value = b2_application_key.sabedoria.application_key
}

resource "github_actions_secret" "sabedoria_aws_access_key_id" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_AWS_ACCESS_KEY_ID"
  plaintext_value = b2_application_key.sabedoria.application_key_id
}

resource "github_actions_secret" "sabedoria_bucket_endpoint" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_BUCKET_ENDPOINT"
  plaintext_value = data.b2_account_info.acc.s3_api_url
}

resource "github_actions_secret" "sabedoria_bucket_name" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_BUCKET_NAME"
  plaintext_value = b2_bucket.sabedoria.bucket_name
}
