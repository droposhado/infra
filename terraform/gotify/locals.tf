locals {
  domain = "${var.subdomain}.${var.domain}"
  envs = [
    {
      key   = "GOTIFY_SERVER_PORT"
      value = var.gotify_port
    },
    {
      key   = "GOTIFY_SERVER_SSL_REDIRECTTOHTTPS"
      value = "true"
    },
    {
      key   = "GOTIFY_DATABASE_DIALECT"
      value = "postgres"
    },
    {
      key   = "GOTIFY_DATABASE_CONNECTION"
      value = "host=${local.postgresql.host} port=${local.postgresql.port} user=${postgresql_role.main.name} dbname=${postgresql_database.main.name} password=${postgresql_role.main.password}"
    },
    {
      key   = "GOTIFY_DEFAULTUSER_NAME"
      value = local.gotify.admin_name
    },
    {
      key   = "GOTIFY_DEFAULTUSER_PASS"
      value = local.gotify.admin_password
    }
  ]
  postgresql = data.terraform_remote_state.bootstrap.outputs.postgresql
  gotify = {
    admin_name     = module.gotify_admin_name.name
    admin_password = module.gotify_admin_password.password
  }
}
