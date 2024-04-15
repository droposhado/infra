locals {
  cloudflare_account_id   = data.terraform_remote_state.meta.outputs.cloudflare.account_id
  cloudflare_project_name = module.blog_project.project_name
  cloudflare_zone_id      = data.terraform_remote_state.meta.outputs.cloudflare.zone_id
  domain                  = data.terraform_remote_state.meta.outputs.domain.text
  domain_default_ttl      = data.terraform_remote_state.meta.outputs.domain.default_ttl
  github_blog_repo        = data.terraform_remote_state.meta.outputs.github.blog
}
