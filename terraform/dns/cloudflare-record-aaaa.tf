resource "cloudflare_record" "aaaa_www" {
  # Together with bulk redirect
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "www"
  value   = "100::"
  type    = "AAAA"
  ttl     = 1
  # always need be true to work
  proxied = true
}
