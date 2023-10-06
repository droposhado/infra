resource "tfe_variable" "vpc_aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.vpc.id
}

resource "tfe_variable" "vpc_aws_region_default" {
  key          = "AWS_DEFAULT_REGION"
  value        = var.aws_region_default
  category     = "env"
  workspace_id = tfe_workspace.vpc.id
}

resource "tfe_variable" "vpc_aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.vpc.id
}

resource "tfe_variable" "vpc_aws_regions" {
  key          = "aws_regions"
  value        = var.aws_regions
  category     = "terraform"
  workspace_id = tfe_workspace.vpc.id
}

resource "tfe_variable" "vpc_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.vpc.id
}
