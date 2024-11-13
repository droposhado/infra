locals {
  database_url = "postgresql://${postgresql_role.main.name}:${postgresql_role.main.password}@${local.postgresql.host}:${local.postgresql.port}/${postgresql_database.main.name}"
  fqdn         = "${var.subdomain}.${var.domain}"
  fqdn_slug    = replace("${var.subdomain}.${var.domain}", ".", "-")
  postgresql   = data.terraform_remote_state.bootstrap.outputs.postgresql
  sentry       = data.terraform_remote_state.bootstrap.outputs.sentry
  sentry_dsn   = module.sentry_project.key.dsn_public
}
