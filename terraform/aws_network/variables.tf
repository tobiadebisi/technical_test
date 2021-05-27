variable "subnet_frontend_0" {
  type = string
}

variable "subnet_frontend_1" {
  type = string
}

variable "subnet_frontend_2" {
  type = string
}

variable "environ_name" {
  type = string
}

variable "ingress_security_group" {
  type        = list(number)
  description = "list of ingress ports"
}

variable "egress_security_group" {
  type        = list(number)
  description = "list of egress ports"
}