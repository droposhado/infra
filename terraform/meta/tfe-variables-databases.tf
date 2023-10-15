resource "tfe_variable" "databases_aws_region_default" {
  key          = "aws_region_default"
  value        = var.aws_region_default
  category     = "terraform"
  workspace_id = tfe_workspace.databases.id
}

resource "tfe_variable" "databases_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.databases.id
}

resource "tfe_variable" "databases_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.databases.id
}
