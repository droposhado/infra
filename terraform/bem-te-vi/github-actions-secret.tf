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
