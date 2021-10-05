resource "azurerm_route_table" "myroutetable" {
  name                = "routetable-name"
  location            = "eastUS2"
  resource_group_name = azurerm_resource_group.example.name

  route {
    name                   = "example"
    address_prefix         = "10.100.0.0/14"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.1"
  }
}
