data "cloudflare_zone" "droposhado_org" {
  name = var.domain
}

module "migadu-email" {
  source  = "droposhado/migadu-mail/cloudflare"
  version = "1.0.0"
  zone_id = data.cloudflare_zone.droposhado_org.id
  domain  = var.domain
}

module "cloudflare" {
  source     = "./modules/cloudflare"
  account_id = var.account_id
  domain     = var.domain
  records    = local.cloudflare_records
}
