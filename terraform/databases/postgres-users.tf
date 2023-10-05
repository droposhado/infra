resource "postgresql_role" "sabedoria" {
  name               = data.terraform_remote_state.seeds.outputs.pg_cluster.admin.username
  login              = true
  password           = data.terraform_remote_state.seeds.outputs.pg_cluster.admin.password
  encrypted_password = true
}
