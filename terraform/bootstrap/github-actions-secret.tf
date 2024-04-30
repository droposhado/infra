resource "github_actions_secret" "infra_private" {
  repository  = var.github_infra_repo
  secret_name = "INFRA_MIRROR_SSH_KEY"

  #checkov:skip=CKV_GIT_4:This content not need be encrypted
  plaintext_value = tls_private_key.mirror.private_key_openssh
}
