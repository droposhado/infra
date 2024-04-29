locals {
  cloudflare_project_name  = module.lp_project.project_name
  cloudflare_project_token = module.lp_deploy_token.token
  domain                   = data.terraform_remote_state.bootstrap.outputs.domain.text
}
