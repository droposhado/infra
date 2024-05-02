resource "postgresql_role" "main" {
  name               = module.sabedoria_pg_name.name
  login              = true
  password           = module.sabedoria_pg_password.password
  encrypted_password = true
}
