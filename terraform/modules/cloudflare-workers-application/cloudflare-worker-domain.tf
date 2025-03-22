resource "cloudflare_worker_domain" "main" {
  account_id  = data.cloudflare_zone.main.account_id
  hostname    = local.fqdn
  service     = cloudflare_worker_script.main.name
  zone_id     = data.cloudflare_zone.main.id
  environment = var.environment
}
