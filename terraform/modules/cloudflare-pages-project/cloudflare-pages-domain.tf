resource "cloudflare_pages_domain" "droposhado_org" {
  account_id   = var.account_id
  project_name = cloudflare_pages_project.droposhado_org.name
  domain       = var.domain
}
