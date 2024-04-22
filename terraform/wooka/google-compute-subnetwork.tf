resource "google_compute_subnetwork" "main" {
  name                     = module.subnetwork_name.name
  ip_cidr_range            = "10.0.1.0/24"
  network                  = google_compute_network.main.self_link
  private_ip_google_access = true

  log_config {
    aggregation_interval = "INTERVAL_5_SEC"
    flow_sampling        = 0.5
  }
}