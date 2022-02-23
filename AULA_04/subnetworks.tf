# resource "google_compute_subnetwork" "sub-1" {
#   name          = "sub-1"
#   ip_cidr_range = "10.10.0.0/16"
#   region        = "us-central1"
#   network       = google_compute_network.vpc_network.id
# }

# resource "google_compute_subnetwork" "sub-2" {
#   name          = "sub-2"
#   ip_cidr_range = "10.20.0.0/16"
#   region        = "asia-east1"
#   network       = google_compute_network.vpc_network.id
# }