variable "balancing_mode" {
  type        = string
  description = "Modo de Balanceamento"
  default     = "RATE"
}

variable "backends" {
  type        = list(any)
  description = "Lista de configuracoes de Balanceamento"
}