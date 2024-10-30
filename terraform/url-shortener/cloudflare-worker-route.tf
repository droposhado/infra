resource "cloudflare_worker_route" "root" {
  zone_id     = data.cloudflare_zone.main.id
  pattern     = "${local.fqdn}/*"
  script_name = cloudflare_worker_script.root.name
}
