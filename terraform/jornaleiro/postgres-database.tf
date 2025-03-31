resource "postgresql_database" "main" {
  name              = module.jornaleiro_pg_name.name
  owner             = module.jornaleiro_pg_name.name
  connection_limit  = -1
  allow_connections = true
}
