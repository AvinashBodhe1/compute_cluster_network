variable "region" {
  type =        string
  description = "OCI Region"
}

variable "compartment_ocid" {
  type =        string
  description = "Compartment OCID"
}

variable "instance_configuration_id" {
  type =        string
  description = "Fault Domain"
}

variable "cluster_network_instance_pools_size" {
  type =        string
  description = "VM Host Shape"
}

variable "cluster_network_placement_configuration_availability_domain" {
  type =        string
  description = "VM Host Name"
}

variable "subnet_id" {
   type = string
   description = "Availability Domain"
}

variable "cluster_network_display_name" {
    type = string
    description = "cluster network display name"
  
}