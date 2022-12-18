variable "resource_group_name" {
  description = "Name of the Resource Group"
  default     = "RG-VM"
}

variable "location" {
  description = "Location of the VM"
  default     = "easteurope"
}

variable "default_tags" {
  description = "Tags to help us group the VMs"
  type        = "map"
}

variable "capacity" {
  description = "Capacity in each environments"
  default     = "2"
}

variable "address_space" {
  description = "Address space"
  default     = "10.0.0.0/16"
}

variable "subnet" {
  description = "Name of the Subnet"
  default     = "subnet-vm"
}

variable "environment" {
  description = "Dev, Staging or Production"
  default     = "Dev"
}

variable "application" {
  description = "Name of the Application"
  default     = "app-name"
}
