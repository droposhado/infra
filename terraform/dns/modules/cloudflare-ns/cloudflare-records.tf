# resource "cloudflare_record" "ns" {
#   zone_id  = cloudflare_zone.main.id
#   for_each = { for idx, val in local.ns : idx => val }

#   name    = "@"
#   value   = each.value
#   type    = "NS"
#   ttl     = 60
#   proxied = false
# }
