locals {
  cloudflare_project_name  = module.project.project_name
  fqdn                     = "${var.domain}"
}
