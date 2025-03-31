module "dotroot" {
  source    = "../modules/dotroot"
  domain    = var.domain
  subdomain = var.subdomain
}

module "project" {
  source    = "../modules/cloudflare-pages-project"
  name      = module.dotroot.fqdn_slug
  domain    = var.domain
  subdomain = var.subdomain
}
