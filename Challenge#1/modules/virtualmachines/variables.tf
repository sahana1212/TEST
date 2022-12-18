variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default     = "RG-VM"
}

variable "location" {
  description = "The location/region where we are crrating the resource"
  default     = "easteurope"
}

variable "tags" {
  description = "The tags to associate the resource we are creating"
  type        = "map"
}

variable "ip_configuration_name" {
  description = "Name of the IP Configuration"
  default ="test"
}

variable "vmsize" {
  description = "Size of the VM"
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "Username for authentication of the VM"
  default     = "adminuser"
}

variable "os_disk_caching" {
  description = "Caching for OS Disk"
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "Storage Account Type"
  default     = "Standard_LRS"
}

variable "source_image_publisher" {
  description = "Publisher of the Source Image"
  default     = ""
}

variable "source_image_offer" {
  description = "Source Image Offer"
  default     = "UbuntuServer"
}

variable "source_image_sku" {
  description = "SKU of the Source Image"
  default     = "16.04-LTS"
}

variable "source_image_version" {
  description = "Version of the Source Image"
  default     = "latest"
}




