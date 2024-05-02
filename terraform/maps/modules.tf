module "maps_project" {
  source    = "../modules/cloudflare-pages-project"
  domain    = local.domain
  subdomain = "maps"
}

module "maps_deploy_token" {
  source           = "../modules/cloudflare-pages-token"
  domain           = local.domain
  allowed_ip_range = data.github_ip_ranges.main.actions
}
