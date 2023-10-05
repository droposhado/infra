resource "tfe_variable" "seeds_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.seeds.id
}

resource "tfe_variable" "seeds_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.seeds.id
}
