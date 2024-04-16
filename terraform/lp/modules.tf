module "lp_project" {
  source     = "../modules/cloudflare-pages-project"
  account_id = local.cloudflare_account_id
  domain     = local.domain
  subdomain  = "lp"
  zone_id    = local.cloudflare_zone_id
}
