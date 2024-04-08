resource "aiven_pg" "pg" {
  project                 = data.aiven_project.main.project
  cloud_name              = var.cloud_name
  plan                    = var.plan
  service_name            = var.service_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  termination_protection  = var.termination_protection

  pg_user_config {
    pg_version = var.pg_version

    public_access {
      pg         = true
      prometheus = false
    }
  }
}
