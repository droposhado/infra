resource "postgresql_role" "main" {
  name               = module.jornaleiro_pg_name.name
  login              = true
  password           = module.jornaleiro_pg_password.password
  encrypted_password = true
}
