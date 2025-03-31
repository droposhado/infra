locals {
  database_url     = "postgresql://${postgresql_role.main.name}:${postgresql_role.main.password}@${local.postgresql.host}:${local.postgresql.port}/${postgresql_database.main.name}"
  postgresql       = data.terraform_remote_state.bootstrap.outputs.postgresql
  jornaleiro_token = module.jornaleiro_token.password
  sentry           = data.terraform_remote_state.bootstrap.outputs.sentry
  sentry_dsn       = module.sentry_project.key.dsn_public
  workers_secrets = {
    DATABASE_URL = local.database_url
    SENTRY_DSN   = local.sentry_dsn
    AUTH_TOKEN   = local.jornaleiro_token
  }
}
