resource "aiven_mysql" "main" {
  project                 = data.aiven_project.main.project
  cloud_name              = var.cloud_name
  plan                    = var.plan
  service_name            = var.service_name
  maintenance_window_time = var.maintenance_window_time
  termination_protection  = var.termination_protection

  mysql_user_config {
    mysql_version = var.mysql_version

    mysql {
      sql_mode                = "ANSI,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION,NO_ZERO_DATE,NO_ZERO_IN_DATE"
      sql_require_primary_key = true
    }

    public_access {
      mysql = true
    }
  }
}