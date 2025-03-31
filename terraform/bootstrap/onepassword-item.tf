resource "onepassword_item" "aiven_mysql" {
  vault = data.onepassword_vault.main.uuid

  title    = "Aiven MySQL"
  category = "database"
  type     = "mysql"

  hostname = module.aiven_mysql.host
  port     = module.aiven_mysql.port
  database = module.aiven_mysql.dbname
  username = module.aiven_mysql.username
  password = module.aiven_mysql.password
}

resource "onepassword_item" "aiven_pg" {
  vault = data.onepassword_vault.main.uuid

  title    = "Aiven PostgreSQL"
  category = "database"
  type     = "postgresql"

  hostname = module.aiven_pg.host
  port     = module.aiven_pg.port
  database = module.aiven_pg.dbname
  username = module.aiven_pg.username
  password = module.aiven_pg.password

  url = "postgresql://${module.aiven_pg.username}:${module.aiven_pg.password}@${module.aiven_pg.host}:${module.aiven_pg.port}/${module.aiven_pg.dbname}"
}
