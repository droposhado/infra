resource "google_compute_firewall" "ingress" {
  name          = "terragoat-${var.environment}-firewall"
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
  name          = "terragoat-${var.environment}-firewall"
  network       = google_compute_network.main.id
  source_ranges = ["0.0.0.0/0"]
  direction     = "EGRESS"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
}