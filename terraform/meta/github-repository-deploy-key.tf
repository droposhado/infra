resource "github_repository_deploy_key" "github_infra_deploy_key" {
  title      = "Repository deploy key, only has permission for infra"
  repository = var.github_infra_repo
  key        = tls_private_key.github_infra_deploy_key.public_key_openssh
  read_only  = false
}
