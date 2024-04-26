resource "postgresql_database" "main" {
  name              = module.maya_pg_name.name
  owner             = module.maya_pg_name.name
  connection_limit  = -1
  allow_connections = true
}
