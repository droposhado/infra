output "dbname" {
  value = aiven_mysql.main.mysql[0].params[0].database_name
}

output "host" {
  value = aiven_mysql.main.service_host
}

output "password" {
  value = aiven_mysql.main.service_password
}

output "port" {
  value = aiven_mysql.main.service_port
}

output "state" {
  value = aiven_mysql.main.state
}

output "username" {
  value = aiven_mysql.main.service_username
}
