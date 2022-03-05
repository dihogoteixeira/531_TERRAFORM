locals {
  env = terraform.workspace
  machine_type = lookup(var.machine_type, terraform.workspace, null)
  network_name = lookup(var.network_name, terraform.workspace, null)
  custom_labels = {
    Terraform   = "true"
    Project     = "platform"
    Team        = "4linux"
    Environment = var.env
  }
}