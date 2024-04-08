resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.main.id
  name    = "@"
  value   = cloudflare_pages_project.droposhado_org.subdomain
  type    = "CNAME"
  ttl     = 1
  proxied = true
}
