resource "azurerm_virtual_network" "this" {
  name                = var.name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_subnet" "this" {
  for_each = var.subnets

  name                 = each.key
  address_prefixes     = each.value
  virtual_network_name = azurerm_virtual_network.this.name
  resource_group_name  = var.resource_group_name
}
