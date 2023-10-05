resource "cloudflare_zone_dnssec" "droposhado_org" {
  zone_id = cloudflare_zone.droposhado_org.id
}
