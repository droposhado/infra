resource "github_actions_secret" "infra_private" {
  repository      = var.github_infra_repo
  secret_name     = "INFRA_MIRROR_SSH_KEY"
  encrypted_value = var.infra_ssh_private
}
