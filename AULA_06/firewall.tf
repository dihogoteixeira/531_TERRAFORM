resource "google_compute_firewall" "allow-22" {
  name    = "allow-22"
  network = data.google_compute_network.default.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]
}