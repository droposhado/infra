resource "cloudflare_pages_project" "main" {
  account_id        = var.account_id
  name              = "${local.subdomain_slug}${local.domain_slug}"
  production_branch = "main"
  lifecycle {
    ignore_changes = [
      deployment_configs
    ]
  }
}
