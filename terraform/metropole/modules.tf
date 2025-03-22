module "project" {
  source    = "../modules/cloudflare-pages-project"
  domain    = var.domain
  subdomain = var.subdomain
}
