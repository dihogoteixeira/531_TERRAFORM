# resource "google_compute_network" "vpc_network" {
#   name                    = "bob"
#   auto_create_subnetworks = false
# }

resource "google_compute_network" "vpc" {
  name = "rede-alfa"
}
