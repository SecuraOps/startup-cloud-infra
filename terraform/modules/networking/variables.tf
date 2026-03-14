variable "name" {
  description = "VNet name"
  type        = string
}

variable "address_space" {
  type = list(string)
}

variable "subnets" {
  description = "Map of subnet name to CIDR"
  type        = map(list(string))
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
