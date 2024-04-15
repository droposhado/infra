locals {
  cloudflare_account_id   = data.terraform_remote_state.meta.outputs.cloudflare.account_id
  cloudflare_api_token    = data.terraform_remote_state.meta.outputs.cloudflare.api_token
  cloudflare_project_name = module.blog_project.project_name
  cloudflare_zone_id      = data.terraform_remote_state.meta.outputs.cloudflare.zone_id
  domain                  = data.terraform_remote_state.meta.outputs.domain.text
  github_blog_repo        = data.terraform_remote_state.meta.outputs.github.blog
  github_token            = data.terraform_remote_state.meta.outputs.github.token
}
