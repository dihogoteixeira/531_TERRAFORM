resource "google_compute_instance" "this" {
  count = var.amount

  name         = format("%s-%d", var.name, count.index)
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
  }

  metadata_startup_script = "./scripts/us.sh"
}