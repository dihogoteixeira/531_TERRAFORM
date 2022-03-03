variable "name" {
  type        = string
  description = "Nome do Grupo"
}

variable "base_instance_name" {
  type        = string
  description = "Prefixo das instancias"
}

variable "region" {
  type        = string
  description = "Regiao do grupo de instancias"
}

variable "distribution_policy_zones" {
  type        = list(string)
  description = "Zonas do Grupo"
}

variable "instance_template" {
  type        = string
  description = "Self link do Template de instanciac"
}

variable "resource_depends_on" {
  type        = any
  description = "Depends_on do modulo"
  default     = null
}