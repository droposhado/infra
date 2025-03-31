resource "postgresql_role" "main" {
  name               = module.correnteza_pg_name.name
  login              = true
  password           = module.correnteza_pg_password.password
  encrypted_password = true
}
