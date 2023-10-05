resource "postgresql_database" "sabedoria" {
  name              = data.terraform_remote_state.seeds.outputs.sabedoria.name
  owner             = data.terraform_remote_state.seeds.outputs.pg_cluster.admin.username
  connection_limit  = -1
  allow_connections = true
}
