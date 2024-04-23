resource "cloudflare_record" "deb" {
  zone_id = data.cloudflare_zone.main.id
  name    = "deb"
  value   = "deb.${var.domain}.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_record" "pypi" {
  zone_id = data.cloudflare_zone.main.id
  name    = "pypi"
  value   = "pypi.${var.domain}.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}
