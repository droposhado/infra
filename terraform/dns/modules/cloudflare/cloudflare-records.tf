resource "cloudflare_record" "main" {
  zone_id  = cloudflare_zone.main.id
  for_each = { for idx, val in var.records : idx => val }

  # proxied record need ttl with value 1
  name    = each.value.name
  value   = each.value.value
  type    = each.value.type
  ttl     = each.value.proxied ? 1 : each.value.ttl
  proxied = each.value.proxied
}

resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.main.id
  name    = "@"
  value   = cloudflare_pages_project.droposhado_org.subdomain
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cdn" {
  zone_id = cloudflare_zone.main.id
  name    = "cdn"
  value   = cloudflare_pages_project.cdn_droposhado_org.subdomain
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "ns" {
  zone_id  = cloudflare_zone.main.id
  for_each = toset(var.ns)

  name    = "@"
  value   = each.value
  type    = "NS"
  ttl     = 60
  proxied = false
}
