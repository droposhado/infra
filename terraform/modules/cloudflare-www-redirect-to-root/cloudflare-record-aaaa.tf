resource "cloudflare_record" "www_aaaa" {
  zone_id = var.zone_id
  name    = "www"
  content = "100::"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}
