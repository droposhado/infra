resource "github_actions_secret" "sabedoria_db_host" {
  repository      = var.github_infra_repo
  secret_name     = "SABEDORIA_DB_HOST"
  plaintext_value = ""
}
