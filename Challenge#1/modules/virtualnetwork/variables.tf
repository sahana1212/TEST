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

variable "vnet_name" {
  description = "Name of the vnet to create"
  default     = "VNET"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.0.0.0/16"
}

variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  default     = ["10.0.0.4", "10.0.0.5"]
}
