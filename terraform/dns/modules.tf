module "cloudflare" {
  source     = "./modules/cloudflare"
  account_id = var.account_id
  domain     = var.domain
  records    = local.cloudflare_records
}
