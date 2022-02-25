module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.0.0"

  network_name = "modular"
  project_id   = "gold-obelisk-342021"
  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.0.0/24"
      subnet_region = "us-west1"
    },
    {
      subnet_name   = "subnet-02"
      subnet_ip     = "10.20.0.0/24"
      subnet_region = "us-central1"
    },
    {
      subnet_name   = "subnet-03"
      subnet_ip     = "10.30.0.0/24"
      subnet_region = "asia-east1"
    }
  ]
}