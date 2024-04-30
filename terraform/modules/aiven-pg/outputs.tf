output "dbname" {
  value = aiven_pg.main.pg.dbname
}

output "host" {
  value = aiven_pg.main.service_host
}

output "password" {
  value = aiven_pg.main.service_password
}

output "port" {
  value = aiven_pg.main.service_port
}

output "state" {
  value = aiven_pg.main.state
}

output "username" {
  value = aiven_pg.main.service_username
}
