locals {
  cloudflare_project_name  = module.news_project.project_name
  cloudflare_project_token = module.news_deploy_token.token
  domain                   = data.terraform_remote_state.bootstrap.outputs.domain.text
}
