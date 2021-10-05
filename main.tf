resource "azurerm_route_table" "myroutetable1" {
  name                = var.routetable-name
  location            = var.routetable-location
  resource_group_name = var.routetable-rg-name

  route {
    name                   = "route1"
    address_prefix         = "10.100.0.0/14"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.1"
  }
}
resource "azurerm_subnet_route_table_association" "myroutetable1-association" {
  subnet_id      = var.routetable-subnet-id
  route_table_id = azurerm_route_table.myroutetable1.id
}
