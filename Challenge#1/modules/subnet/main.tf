resource "azurerm_subnet" "subnet" {
  count                = "${var.count}"
  resource_group_name  = "${var.resource_group_name}"
  name                 = "${lookup(var.subnets[count.index], "name", "")}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix       = "${lookup(var.subnets[count.index], "prefix", "")}"
}
