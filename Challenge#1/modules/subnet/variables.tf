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

# Everything below is for the module

variable "vnet_name" {
  description = "Name of the vnet to create the subnets in"
  default     = "vnet-vm"
}

variable "subnets" {
  type        = "list"
  description = "The address prefix to use for the subnet."
  default     = [10.0.1.0/24]
}

variable "count" {
  description = "Number of Subnets in the Virtual Network"
  default     = 2
}
