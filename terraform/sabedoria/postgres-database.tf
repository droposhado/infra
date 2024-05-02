resource "postgresql_database" "main" {
  name              = module.sabedoria_pg_name.name
  owner             = module.sabedoria_pg_name.name
  connection_limit  = -1
  allow_connections = true
}
