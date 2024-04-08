resource "cloudflare_record" "key1" {
  zone_id = var.zone_id
  name    = "key1._domainkey"
  value   = "key1.${var.domain}._domainkey.migadu.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "key2" {
  zone_id = var.zone_id
  name    = "key2._domainkey"
  value   = "key2.${var.domain}._domainkey.migadu.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "key3" {
  zone_id = var.zone_id
  name    = "key3._domainkey"
  value   = "key3.${var.domain}._domainkey.migadu.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "autoconfig" {
  # Thunderbird autoconfig mechanism
  zone_id = var.zone_id
  name    = "autoconfig"
  value   = "autoconfig.migadu.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}
