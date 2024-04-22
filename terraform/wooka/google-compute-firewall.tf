resource "google_compute_firewall" "ingress" {
  name          = "${module.network_name.name}-ingress"
  network       = google_compute_network.main.id
  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  deny {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  deny {
    protocol = "udp"
    ports    = ["0-65535"]
  }
}

resource "google_compute_firewall" "egress" {
  name               = "${module.network_name.name}-egress"
  network            = google_compute_network.main.id
  direction          = "EGRESS"
  destination_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
}