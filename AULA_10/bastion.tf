resource "google_compute_instance" "bastion" {
    count        = terraform.workspace == "prd" ? 3 : 2
    name         = format("%s-%s", "bastion", count.index)
    machine_type = local.machine_type
    zone         = "us-central1-a"
    labels       = local.custom_labels

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-10"
        }
    }

    network_interface {
        subnetwork = data.google_compute_network.default.name

        access_config {
            // Ephemeral IP
        }
    }
}