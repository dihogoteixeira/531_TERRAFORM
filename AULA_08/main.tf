module "master" {
  source = "git@github.com:dihogoteixeira/8031_mod-gcp-instance.git?ref=v1.2"

  name                    = "tf-master"
  image                   = "ubuntu-os-cloud/ubuntu-1804-lts"
  machine_type            = "e2-medium"
  metadata_startup_script = "./scripts/install_master.sh"
  tags                    = "master"

  ssh_keys = [
    {
      publickey = "ssh-rsa yourkeyabc username@PC"
      user      = "bob"
    },
    {
      publickey = "ssh-rsa yourkeyabc username@PC"
      user      = "mosulco"
    }
  ]
}

module "worker" {
  source = "git@github.com:dihogoteixeira/8031_mod-gcp-instance.git?ref=v1.2"

  name                    = "tf-worker"
  image                   = "ubuntu-os-cloud/ubuntu-1804-lts"
  machine_type            = "e2-medium"
  amount                  = 2
  metadata_startup_script = "./scripts/install_worker.sh"
  tags                    = "worker"

  ssh_keys = [
    {
      publickey = "ssh-rsa yourkeyabc username@PC"
      user      = "bob"
    },
    {
      publickey = "ssh-rsa yourkeyabc username@PC"
      user      = "mosulco"
    }
  ]
}