resource "cloudflare_pages_domain" "main" {
  account_id   = data.cloudflare_zone.main.account_id
  project_name = cloudflare_pages_project.main.name
  domain       = strcontains(var.subdomain, "@") ? "${var.domain}" : "${var.subdomain}.${var.domain}"
}
