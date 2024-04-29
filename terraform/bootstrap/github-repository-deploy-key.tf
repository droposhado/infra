resource "github_repository_deploy_key" "mirror" {
  title      = "key to mirror infra private repository to public"
  repository = var.github_infra_repo
  key        = tls_private_key.mirror.public_key_openssh
  read_only  = true
}
