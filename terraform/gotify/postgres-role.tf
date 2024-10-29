resource "postgresql_role" "main" {
  name               = module.gotify_pg_name.name
  login              = true
  password           = module.gotify_pg_password.password
  encrypted_password = true
}
