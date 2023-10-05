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
