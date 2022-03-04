locals {
  custom_labels = {
    Terraform   = "true"
    Project     = "platform"
    Team        = "4linux"
    Environment = terraform.workspace
  }
}