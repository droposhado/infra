resource "github_repository_deploy_key" "mirror" {
  title      = "key to mirror infra private repository to public"
  repository = var.github_infra_public_repo
  key        = var.infra_ssh_public
  read_only  = false
}
