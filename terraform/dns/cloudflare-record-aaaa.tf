resource "cloudflare_record" "aaaa_status" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "status"
  value   = data.terraform_remote_state.apps.outputs.uptime_kuma.ip.v6
  type    = "AAAA"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "aaaa_www" {
  # Together with bulk redirect
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "www"
  value   = "100::"
  type    = "AAAA"
  ttl     = 1
  # always need be true to work
  proxied = true
}
