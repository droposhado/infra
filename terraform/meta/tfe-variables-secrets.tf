resource "tfe_variable" "secrets_aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_aws_region_default" {
  key          = "aws_region_default"
  value        = var.aws_region_default
  category     = "terraform"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_github_token" {
  key          = "GITHUB_TOKEN"
  value        = var.github_token
  category     = "env"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_github_verification_secret" {
  key          = "github_verification_secret"
  value        = var.github_verification_secret
  category     = "terraform"
  workspace_id = tfe_workspace.secrets.id
}

resource "tfe_variable" "secrets_tfe_verification_secret" {
  key          = "tfe_verification_secret"
  value        = var.tfe_verification_secret
  category     = "terraform"
  workspace_id = tfe_workspace.secrets.id
}
