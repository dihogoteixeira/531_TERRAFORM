variable "machine_type" {
  type = map(string)
  default = {
    "prd" = "e2-medium"
    "dev" = "f1-micro"
  }
}

variable "network_name" {
  type = map(string)
  default = {
    "prd" = "rede-alfa"
    "dev" = "default"
  }
}