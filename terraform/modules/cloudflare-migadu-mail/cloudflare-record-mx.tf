resource "cloudflare_record" "priority_10" {
  zone_id  = var.zone_id
  name     = "@"
  value    = "aspmx1.migadu.com"
  type     = "MX"
  priority = 10
  ttl      = 3600
  proxied  = false
}

resource "cloudflare_record" "priority_20" {
  zone_id  = var.zone_id
  name     = "@"
  value    = "aspmx2.migadu.com"
  type     = "MX"
  priority = 20
  ttl      = 3600
  proxied  = false
}
