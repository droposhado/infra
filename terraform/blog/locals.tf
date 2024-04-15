locals {
  cloudflare_account_id   = data.terraform_remote_state.meta.cloudflare.account_id
  cloudflare_project_name = module.blog_project.project_name
  cloudflare_zone_id      = data.terraform_remote_state.meta.cloudflare.zone_id
  domain                  = data.terraform_remote_state.meta.domain.text
  domain_default_ttl      = data.terraform_remote_state.meta.domain.default_ttl
  github_blog_repo        = data.terraform_remote_state.meta.github.blog
}
