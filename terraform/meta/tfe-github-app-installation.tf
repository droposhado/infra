data "tfe_github_app_installation" "gha_installation" {
  provider = tfe.personal
  installation_id = var.github_app_installation_id
}