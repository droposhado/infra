resource "google_compute_subnetwork" "main" {
  name          = module.subnetwork_name.name
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.main.self_link
}