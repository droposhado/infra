resource "postgresql_database" "sabedoria" {
  name              = local.sabedoria.name
  owner             = local.sabedoria.admin.username
  connection_limit  = -1
  allow_connections = true
}
