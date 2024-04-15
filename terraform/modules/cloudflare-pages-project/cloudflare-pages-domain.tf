resource "cloudflare_pages_domain" "main" {
  account_id   = var.account_id
  project_name = cloudflare_pages_project.main.name
  domain       = strcontains(var.subdomain, "@") ? "${var.domain}" : "${var.domain_slug}.${local.domain_slug}"
}
