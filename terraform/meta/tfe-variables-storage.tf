resource "tfe_variable" "storage_aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.storage.id
}

resource "tfe_variable" "storage_aws_region_default" {
  key          = "aws_region_default"
  value        = var.aws_region_default
  category     = "terraform"
  workspace_id = tfe_workspace.storage.id
}

resource "tfe_variable" "storage_aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.storage.id
}

resource "tfe_variable" "storage_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.storage.id
}

resource "tfe_variable" "storage_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.storage.id
}
