resource "google_compute_firewall" "ingress-allow-hhtp" {
  name    = "ingress-allow-http"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
}