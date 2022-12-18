resource "azurerm_network_interface" "networkinterface" {
  name                = "${var.name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  ip_configuration {
    name                          = "${var.ip_configuration_name}"
    subnet_id                     = azurerm_subnet.networkinterface.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "virtualmachine" {
  name                = "example-machine"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  size                = "${var.vmsize}"
  admin_username      = "${var.admin_username}"
  network_interface_ids = [
    azurerm_network_interface.virtualmachine.id,
  ]

  admin_ssh_key {
    username   = "${var.admin_username}"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "${var.os_disk_caching}"
    storage_account_type = "${var.os_disk_storage_account_type}"
  }

  source_image_reference {
    publisher = "${var.source_image_publisher}"
    offer     = "${var.source_image_offer}"
    sku       = "${var.source_image_sku}"
    version   = "${var.source_image_version}"
  }
}
