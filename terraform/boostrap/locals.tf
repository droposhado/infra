locals {
  aiven_service_name = module.aiven_pg_service_name.name
  backup_bucket_name = "${local.domain_slug}-backup-${module.backup_uuid.uuid}"
  domain_slug        = replace(var.domain, ".", "-")
}
