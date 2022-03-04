# GCP - Instance Module

Esse modulo facilita a criacao de instancia computacionais no provider `GCP`.

- GCP Virtual Machine Instance (VM)

# Compatibility

This module is meant for use with Terraform 0.13+ and teasted using Terraform 1.0+.

## Usage

You can go to the example:

```hcl
module "instance" {
  source = "git@github.com:dihogoteixeira/gcp-instance.git?ref=v1.2"
  
  amount       = 2
  name         = "jenkins-vm"
  machine_type = "f1-micro"
  image        = "debian-cloud/debian-10"
  network      = "default"
  zone         = "us-central1-a"

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
```

Then perform the follwing commands on the root folder: 

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy`to destroy the build infrastructure

## Inputs

### Required

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | vm name     | string |  false  |  yes |

### Opitional

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ssh_keys | ssh public | list(object[{}] |  true  |  no  |

## Outputs

- `name` Return the nam of instance
```hcl
output "instance" {
  value = module.instance.name
}
```

- `external_ip` Instance External IP
```hcl
output "external_ip" {
  value = module.instance.external_ip
}
```