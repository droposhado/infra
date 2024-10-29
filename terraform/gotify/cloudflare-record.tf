resource "cloudflare_record" "deb" {
  zone_id = data.cloudflare_zone.main.id
  name    = var.subdomain
  value   = koyeb_domain.main.intended_cname
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}
