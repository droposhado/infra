resource "doppler_environment" "main" {
  project = doppler_project.main.name
  slug    = "prod"
  name    = "Production"
}
