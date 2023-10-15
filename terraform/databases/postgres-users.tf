resource "postgresql_role" "sabedoria" {
  name               = local.sabedoria.admin.username
  login              = true
  password           = local.sabedoria.admin.password
  encrypted_password = true
}
