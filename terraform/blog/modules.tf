module "blog_project" {
  source = "../modules/cloudflare-pages-project"
  domain = var.domain
}

module "blog_deploy_token" {
  source           = "../modules/cloudflare-pages-token"
  domain           = var.domain
  allowed_ip_range = data.github_ip_ranges.main.actions
}
