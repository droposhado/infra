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

resource "tfe_variable" "dns_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.dns.id
}

