variable "ami" {
  type        = string
  description = "O usuário vai escolher entre windows ou linux"
}

variable "instance_type" {
  type        = string
  description = "O tipo de instancia."
}

variable "name" {
  type        = string
  description = "tag nome."
}

variable "environment" {
  type    = string
  default = "dev"
}