resource "tfe_variable" "buckets_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.buckets.id
}

resource "tfe_variable" "buckets_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.buckets.id
}
