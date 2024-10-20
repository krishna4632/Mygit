variable "location" {
  description = "Azure region where the AKS cluster will be created."
  default     = "East US"   # Specify the Azure region; change if needed
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster."
  default     = 2           # Set the number of nodes in the AKS cluster
}

variable "vm_size" {
  description = "The VM size for the AKS cluster nodes."
  default     = "Standard_b2pls_v2"   # Set the VM size; change if needed
}
