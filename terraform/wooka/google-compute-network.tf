resource "google_compute_network" "main" {
  name                    = module.network_name.name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}