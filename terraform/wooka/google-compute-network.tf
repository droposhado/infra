resource "google_compute_network" "main" {
  name                     = module.network_name.name
  auto_create_subnetworks  = false
  enable_ula_internal_ipv6 = true
  routing_mode             = "REGIONAL"
}