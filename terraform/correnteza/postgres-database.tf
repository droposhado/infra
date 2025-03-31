resource "postgresql_database" "main" {
  name              = module.correnteza_pg_name.name
  owner             = module.correnteza_pg_name.name
  connection_limit  = -1
  allow_connections = true
}
