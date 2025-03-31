resource "cloudflare_workers_route" "main" {
  zone_id     = data.cloudflare_zone.main.id
  pattern     = "${var.fqdn}/*"
  script_name = cloudflare_workers_script.main.name
}
