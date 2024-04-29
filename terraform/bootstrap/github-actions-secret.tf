resource "github_actions_secret" "infra_private" {
  repository      = var.github_infra_repo
  secret_name     = "INFRA_MIRROR_SSH_KEY"
  encrypted_value = tls_private_key.mirror.private_key_openssh
}
