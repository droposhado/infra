resource "cloudflare_record" "www_a" {
  zone_id = var.zone_id
  name    = "www"
  content = "192.0.2.1"
  type    = "A"
  ttl     = 1
  proxied = true
}
