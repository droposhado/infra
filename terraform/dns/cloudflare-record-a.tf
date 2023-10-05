resource "cloudflare_record" "a_status" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "status"
  value   = data.terraform_remote_state.apps.outputs.uptime_kuma.ip.v4
  type    = "A"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "a_www" {
  # Together with bulk redirect
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "www"
  value   = "192.0.2.1"
  type    = "A"
  ttl     = 1
  # always need be true to work
  proxied = true
}
