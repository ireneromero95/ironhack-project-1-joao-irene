variable "has_public_ip"{
  type = bool
  default = false
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "security_group" {
  type = string
}

variable "subnet" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "key_name" {
  description = "joao-irene-useast1"
  type = string
}