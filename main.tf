provider "oci" {
  region = "${var.region}"
}

resource "oci_core_cluster_network" "test_cluster_network" {
    #Required
    compartment_id = var.compartment_ocid
    instance_pools {
        #Required
        instance_configuration_id = var.instance_configuration_id
        size = var.cluster_network_instance_pools_size
    }
    placement_configuration {
        #Required
        availability_domain = var.cluster_network_placement_configuration_availability_domain
        primary_vnic_subnets {
            #Required
            subnet_id = var.subnet_id

            #is_assign_ipv6ip = var.cluster_network_placement_configuration_primary_vnic_subnets_is_assign_ipv6ip
        }
    }

    #defined_tags = {"Operations.CostCenter"= "42"}
    display_name = var.cluster_network_display_name
    #freeform_tags = {"Department"= "Finance"}
}