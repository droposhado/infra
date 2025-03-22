locals {
  fqdn       = "${var.subdomain}.${var.domain}"
  fqdn_slug  = replace("${var.subdomain}.${var.domain}", ".", "-")
  sentry     = data.terraform_remote_state.bootstrap.outputs.sentry
  sentry_dsn = module.sentry_project.key.dsn_public
}
