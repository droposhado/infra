output "sabedoria" {
  sensitive = true
  value = {
    host     = module.aiven_pg.host
    port     = module.aiven_pg.port
    db       = postgresql_database.sabedoria.name
    username = module.aiven_pg.username
    password = module.aiven_pg.password
  }
}
