resource "cloudflare_record" "ns" {
  zone_id  = cloudflare_zone.main.id
  for_each = toset(var.ns)

  name    = "@"
  value   = each.value
  type    = "NS"
  ttl     = 60
  proxied = false
}
