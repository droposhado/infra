

output "postgresql" {
  sensitive = true
  value = {
    "host" : module.aiven_pg.host,
    "port" : module.aiven_pg.port,
    "admin" : {
      "user" : module.aiven_pg.username,
      "password" : module.aiven_pg.password
    },
  }
}