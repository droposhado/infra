locals {
  cloudflare_project_name  = module.maps_project.project_name
  cloudflare_project_token = module.maps_deploy_token.token
}
