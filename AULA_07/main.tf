# INSTANCIANDO MÓDULOS

// INSTANCE
module "group-jenkins" {
  source = "./mod_custom/gcp_instances"
  
  amount = 2
  name = "jenkins-vm"
}

module "group-web" {
  source = "./mod_custom/gcp_instances"

  amount = 3
  name = "linux-web"
  image = "centos-cloud/centos-8"
}

module "group-gitlab" {
  source = "./mod_custom/gcp_instances"

  name = "linux-web"
  image = "centos-cloud/centos-8"
}
