resource "cloudflare_record" "deb" {
  zone_id = data.cloudflare_zone.main.id
  name    = "deb"
  content = "empty-sea-8x8dn.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_record" "npm" {
  zone_id = data.cloudflare_zone.main.id
  name    = "npm"
  content = "old-glade-1u8sf0.furyns.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_record" "auth" {
  zone_id = data.cloudflare_zone.main.id
  name    = auth0_custom_domain.main.domain
  content = "${auth0_custom_domain.main.verification[0].methods[0].record}."
  type    = upper(auth0_custom_domain.main.verification[0].methods[0].name)
  ttl     = 3600
}
