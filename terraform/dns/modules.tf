module "cloudflare" {
  source     = "./modules/cloudflare"
  account_id = var.account_id
  domain     = var.domain
  records    = local.cloudflare_records
}

module "migadu-email" {
  source  = "droposhado/migadu-mail/cloudflare"
  version = "1.0.0"
  zone_id = module.cloudflare.zone_id
  domain  = var.domain
}
