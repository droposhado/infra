resource "tfe_variable" "dns_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.dns.id
}
