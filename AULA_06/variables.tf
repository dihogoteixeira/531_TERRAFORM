variable "vm_name" {
  type        = string
  description = "Nome das instances"
}

variable "amount" {
  type        = number
  description = "Numero de instancias"
}

variable "vm_machine_type" {
  type = string
}

variable "vm_zone" {
  type = string
}

variable "vm_image" {
  type    = string
  default = "debian-cloud/debian-10"
}