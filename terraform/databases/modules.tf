module "aiven_pg" {
  source                  = "./modules/aiven-pg"
  cloud_name              = var.aiven_cloud_name
  default_db              = var.default_db
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.aiven_plan
  pg_version              = var.aiven_pg_version
  project_name            = var.aiven_project_name
  service_name            = data.terraform_remote_state.seeds.outputs.k8s_cluster.name
  termination_protection  = var.termination_protection
}
