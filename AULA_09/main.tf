# REDE: VPC + SUBNET
module "vpc" {
  source = "terraform-google-modules/network/google"
  version = "3.3.0"

  project_id = "gold-obelisk-342021"
  network_name = "ha-final"
  subnets = [
      {
          subnet_name = "subnet-us"
          subnet_ip = "10.10.10.0/24"
          subnet_region = "us-central1"
      },
      {
          subnet_name = "subnet-asia"
          subnet_ip = "10.10.20.0/24"
          subnet_region = "asia-east1"    
      }
  ]
}

// FIREWALL
resource "google_compute_firewall" "fw-dev" {
  name = "fw-dev"
  network = module.vpc.nework_self_link

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "fw-lb" {
  name = "fw-lb"
  network = module.vpc.network_self_link

  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
}

/*
 INFOS DE SUBNETWORK
 Preciso registrar o self_link das subnets corretamente,
 como estou usilitando módulo, preciso buscar por um
 data_source.
*/

data "google_compute_subnetwork" "subnet-us" {
  name = "subnet-us"
  region = "us-central1"
  depends_on = [
    module.vpc
  ]
}

data "google_compute_subnetwork" "subnet-asia" {
  name = "subnet-us"
  region = "asia-east1"
  depends_on = [
    module.vpc
  ]
}

// INSTANCE TEMPLATES
module "instance-template-us" {
  source = "./mod-gcp-it"
  name = "us"
  metadata_startup_script = "./scripts/us.sh"
  network = module.vpc.network_self_link
  subnetwork = data.google_compute_subnetwork.subnet-us.self_link
}

module "instance-template-asia" {
  source = "./mod-gcp-it"
  name = "asia"
  metadata_startup_script = "./scripts/asia.sh"
  network = module.vpc.network_self_link
  subnetwork = data.google_compute_subnetwork.subnet-asia.self_link
}

// INSTANCE GROUPS
module "mig-us" {
  source = "./mod-gcp-igm"
  name = "mig-us"
  base_instance_name = "us-web"
  region = "us-central1"
  instance_template = module.instance-template-us.self_link
  distribution_policy_zones = ["us-central1-a", "us-central1-b"]
  resource_depends_on = [module.vpc]
}

module "mig-asia" {
  source = "./mod-gcp-igm"
  name = "mig-asia"
  base_instance_name = "asia-web"
  region = "asia-east1"
  instance_template = module.instance-template-us.self_link
  distribution_policy_zones = ["asia-east1-a"]
  resource_depends_on = [module.vpc]
}

// LOAD BALANCE
module "mod-lb" {
  source = "./mod-gcp-lb"
  backends = [
      module.mig-us.instance_group,
      module.mig-asia.instance_group
  ]
}