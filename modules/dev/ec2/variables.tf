variable "ami" {
  type        = string
  description = "O usuário vai escolher entre windows ou linux"
}

variable "instance_type" {
  type        = string
  description = "O tipo de instancia."
}

variable "instance_name" {
  type        = string
  description = "tag nome."
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "owner" {
  type        = string
  description = "representa quem está criando o recurso, inserir o usuário."
}

variable "key_name" {
  type        = string
  default     = "tf-testes"
  description = "Key name que descriptografa a senha de administrator."
}

variable "iam_role" {
  type        = string
  default     = "InfopublicEC2-Windows"
  description = "IAM Role em que a instancia assumirá."
}

variable "security_groups" {
  type        = list(string)
  description = "SG da instancia"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID da rede da instancia."
}