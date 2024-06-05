resource "cloudflare_record" "deb" {
  zone_id = data.cloudflare_zone.main.id
  name    = "npm.pkg"
  value   = "npm.pkg.${var.domain}.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}
