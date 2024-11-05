module "hightower_deploy_token" {
  source           = "../modules/cloudflare-workers-token"
  domain           = var.domain
  allowed_ip_range = data.github_ip_ranges.main.actions
}

output "token" {
  sensitive = true
  value = local.cloudflare_project_token
}