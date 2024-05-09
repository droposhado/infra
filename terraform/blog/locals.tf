locals {
  cloudflare_project_name  = module.blog_project.project_name
  cloudflare_project_token = module.blog_deploy_token.token
}
