data "google_compute_network" "default" {
  name = "default"
}

resource "google_compute_firewall" "allow-ssh-k8s" {
  name          = "allow-ssh-k8s"
  network       = data.google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["master", "worker"]
  allow {
    protocol = "tcp"
    ports   = ["22", "30000-40000"]
  }
}