resource "doppler_secrets_sync_flyio" "main" {
  integration = doppler_integration_flyio.prod.id
  project     = doppler_project.main.name
  config      = doppler_config.main.name

  app_id           = var.app_name
  restart_machines = true

  delete_behavior = "leave_in_target"
}
