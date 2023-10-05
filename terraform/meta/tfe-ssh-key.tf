resource "tfe_ssh_key" "github_infra_deploy_key" {
  name         = "Repository deploy key"
  organization = tfe_organization.main.name
  key          = tls_private_key.github_infra_deploy_key.private_key_pem
}
