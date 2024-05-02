resource "cloudflare_record" "main" {
  zone_id = data.cloudflare_zone.main.id
  name    = "go"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}
