resource "cloudflare_worker_route" "main" {
  zone_id     = data.cloudflare_zone.main.id
  pattern     = "${local.fqdn}/*"
  script_name = cloudflare_worker_script.main.name
}
