resource "tfe_variable" "vpc_aws_region_default" {
  key          = "aws_region_default"
  value        = var.aws_region_default
  category     = "terraform"
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
