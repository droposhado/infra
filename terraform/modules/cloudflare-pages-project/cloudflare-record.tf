resource "cloudflare_record" "main" {
  zone_id = var.zone_id
  name    = strcontains(var.subdomain, "@") ? "@" : var.subdomain
  value   = cloudflare_pages_project.main.subdomain
  type    = "CNAME"
  ttl     = 1
  proxied = true
}
