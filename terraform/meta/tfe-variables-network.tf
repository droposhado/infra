resource "tfe_variable" "network_aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.network.id
}

resource "tfe_variable" "network_aws_region_default" {
  key          = "aws_region_default"
  value        = var.aws_region_default
  category     = "terraform"
  workspace_id = tfe_workspace.network.id
}

resource "tfe_variable" "network_aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.network.id
}

resource "tfe_variable" "network_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.network.id
}
