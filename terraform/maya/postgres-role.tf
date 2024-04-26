resource "postgresql_role" "main" {
  name               = module.maya_pg_name.name
  login              = true
  password           = module.maya_pg_password.password
  encrypted_password = true
}
