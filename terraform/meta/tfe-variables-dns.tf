resource "tfe_variable" "dss_aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.dns.id
}

resource "tfe_variable" "dns_aws_region_default" {
  key          = "aws_region_default"
  value        = var.aws_region_default
  category     = "terraform"
  workspace_id = tfe_workspace.dns.id
}

resource "tfe_variable" "dns_aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.dns.id
}

resource "tfe_variable" "dns_cloudflare_account_id" {
  key          = "account_id"
  value        = var.cloudflare_account_id
  category     = "terraform"
  workspace_id = tfe_workspace.dns.id
}

resource "tfe_variable" "dns_cloudflare_api_token" {
  key          = "CLOUDFLARE_API_TOKEN"
  value        = var.cloudflare_api_token
  category     = "env"
  workspace_id = tfe_workspace.dns.id
}

resource "tfe_variable" "dns_default_ttl" {
  key          = "default_ttl"
  value        = var.default_ttl
  category     = "terraform"
  workspace_id = tfe_workspace.dns.id
}

resource "tfe_variable" "dns_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.dns.id
}


