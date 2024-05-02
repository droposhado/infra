locals {
  cloudflare_project_name  = module.maps_project.project_name
  cloudflare_project_token = module.maps_deploy_token.token
  domain                   = data.terraform_remote_state.bootstrap.outputs.domain.text
}
