output "sabedoria" {
  sensitive = true
  value = {
    host     = module.aws_rds_pg.address
    port     = module.aws_rds_pg.port
    db       = postgresql_database.sabedoria.name
    username = module.aws_rds_pg.username
    password = module.aws_rds_pg.password
  }
}
