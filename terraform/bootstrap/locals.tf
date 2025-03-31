locals {
  aiven_mysql_service_name = module.aiven_mysql_service_name.name
  aiven_pg_service_name    = module.aiven_pg_service_name.name
  domain_slug              = replace(var.domain, ".", "-")
}
