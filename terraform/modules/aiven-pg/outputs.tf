output "dbname" {
  value = aiven_pg.pg.dbname
}

output "host" {
  value = aiven_pg.pg.service_host
}

output "password" {
  value = aiven_pg.pg.service_password
}

output "port" {
  value = aiven_pg.pg.service_port
}

output "state" {
  value = aiven_pg.pg.state
}

output "username" {
  value = aiven_pg.pg.service_username
}
