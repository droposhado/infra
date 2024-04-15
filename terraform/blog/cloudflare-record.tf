resource "cloudflare_record" "blog" {
  zone_id = local.cloudflare_zone_id
  name    = "@"
  value   = local.domain
  type    = "CNAME"
  ttl     = local.domain_default_ttl
  proxied = false
}
