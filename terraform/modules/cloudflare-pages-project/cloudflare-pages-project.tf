resource "cloudflare_pages_project" "droposhado_org" {
  account_id        = var.account_id
  name              = replace(var.domain, ".", "")
  production_branch = "main"
  lifecycle {
    ignore_changes = [
      deployment_configs
    ]
  }
}
