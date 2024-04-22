resource "google_compute_instance" "main" {
  name         = module.instance_name.name
  machine_type = "e2-micro"

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = module.gce_vm_container.source_image
    }
  }

  network_interface {
    network    = google_compute_network.main.self_link
    subnetwork = google_compute_subnetwork.main.self_link
    access_config {}
  }

  metadata = {
    gce-container-declaration = module.gce_vm_container.metadata_value
    google-logging-enabled    = true
    google-monitoring-enabled = true
    block-project-ssh-keys    = false
  }

  service_account {
    email = local.gcp_email
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  shielded_instance_config {
    enable_secure_boot = true
    enable_vtpm        = true
  }
}