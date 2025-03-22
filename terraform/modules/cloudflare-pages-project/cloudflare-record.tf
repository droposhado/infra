resource "cloudflare_record" "main" {
  zone_id = data.cloudflare_zone.main.zone_id
  name    = var.subdomain
  content = cloudflare_pages_project.main.subdomain
  type    = "CNAME"
  ttl     = 1
  proxied = true
}
