locals {
  cloudflare_project_name  = module.project.project_name
  fqdn                     = "${var.subdomain}.${var.domain}"
  fqdn_slug                = replace("${var.subdomain}.${var.domain}", ".", "-")
}
