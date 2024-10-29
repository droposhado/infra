resource "postgresql_database" "main" {
  name              = module.gotify_pg_name.name
  owner             = module.gotify_pg_name.name
  connection_limit  = -1
  allow_connections = true
}
