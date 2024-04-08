resource "cloudflare_record" "deb" {
  zone_id = data.cloudflare_zone.main.id
  name    = "deb"
  value   = "deb.droposhado.org.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_record" "pypi" {
  zone_id = data.cloudflare_zone.main.id
  name    = "pypi"
  value   = "pypi.droposhado.org.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}
