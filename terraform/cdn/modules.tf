module "dotroot" {
  source    = "../modules/dotroot"
  domain    = var.domain
  subdomain = var.subdomain
}
