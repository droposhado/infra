resource "cloudflare_record" "main" {
  zone_id  = data.cloudflare_zone.main.id
  for_each = { for idx, val in var.records : idx => val }

  name    = each.value.name
  value   = each.value.values
  type    = each.value.type
  ttl     = each.value.ttl
  proxied = each.value.proxied
}
