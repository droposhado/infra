resource "tfe_organization_run_task" "snyk" {
  organization = tfe_organization.main.name
  url          = var.snyk_url
  hmac_key     = var.snyk_hmac_key
  name         = "snyk-sec"
  enabled      = true
  description  = "An security task running on Snyk"
}
