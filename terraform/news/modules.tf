module "news_project" {
  source     = "../modules/cloudflare-pages-project"
  account_id = local.cloudflare_account_id
  domain     = "news.${local.domain}"
  zone_id    = local.cloudflare_zone_id
}
