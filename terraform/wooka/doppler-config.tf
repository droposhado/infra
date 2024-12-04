resource "doppler_config" "main" {
  project     = doppler_project.main.name
  environment = doppler_environment.main.slug
  name        = "prod_fly_sync"
}
