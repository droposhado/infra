resource "cloudflare_record" "www_aaaa" {
  zone_id = cloudflare_zone.main.id
  name    = "www"
  value   = "100::"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}
