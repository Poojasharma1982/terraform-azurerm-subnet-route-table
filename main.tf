resource "azurerm_route_table" "myroutetable" {
  name                = var.routetable-name
  location            = var.routetable-location
  resource_group_name = var.routetable-rg-name

  route {
    name                   = "example"
    address_prefix         = "10.100.0.0/14"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.1"
  }
}
