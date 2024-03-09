variable "location" {
  description = "The AZ region to deploy the resources into"
  type = string
}

variable "prefix" {
  description = "The resource prefix"
  type = string
}

locals {
  resource_group_name = "${var.prefix}-azurerm_resource_group"
}
