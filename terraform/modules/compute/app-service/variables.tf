variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku" {
  description = "App Service Plan SKU"
  type        = string
  default     = "B1"
}

variable "tags" {
  type    = map(string)
  default = {}
}
