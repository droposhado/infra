locals {
  aiven_service_name = module.aiven_pg_service_name.name
  domain_slug        = replace(var.domain, ".", "-")
  state_bucket_name  = "${local.domain_slug}-state-${module.state_uuid.uuid}"
}
