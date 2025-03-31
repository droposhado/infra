resource "cloudflare_workers_domain" "main" {
  account_id  = data.cloudflare_zone.main.account_id
  hostname    = var.fqdn
  service     = cloudflare_workers_script.main.name
  zone_id     = data.cloudflare_zone.main.id
  environment = var.environment
}
