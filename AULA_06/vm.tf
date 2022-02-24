data "google_compute_network" "default" {
  name = "default"
}

resource "google_compute_instance" "web" {
  count        = var.amount
  name         = format("%s-%s-%s", var.vm_name, terraform.workspace, count.index)
  machine_type = var.vm_machine_type
  zone         = var.vm_zone
  tags         = ["web"]

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network = data.google_compute_network.default.name

    access_config {
      // Ephemeral IP
    }
  }
}