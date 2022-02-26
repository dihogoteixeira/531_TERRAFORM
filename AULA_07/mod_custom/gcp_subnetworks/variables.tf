variable "name" {
  type = string
  description = "Nome da Subnet"
}

variable "ip_cidr_range" {
  type        = string
  description = "IP CIDR"
}

variable "region" {
  type        = string
  description = "Nome da região utilizada pela subnet"
  default     = "us-central1"
}

variable "network" {
  type        = string
  description = "Nome da VPC que instanciará esta subnet"
}