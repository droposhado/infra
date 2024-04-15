module "news_project" {
  source     = "../modules/cloudflare-pages-project"
  account_id = local.cloudflare_account_id
  domain     = local.domain
  subdomain  = "news"
  zone_id    = local.cloudflare_zone_id
}
