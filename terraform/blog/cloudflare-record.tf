resource "cloudflare_record" "blog" {
  zone_id = data.cloudflare_zone.main.id
  name    = "@"
  value   = local.domain
  type    = "CNAME"
  ttl     = local.domain_default_ttl
  proxied = false
}
