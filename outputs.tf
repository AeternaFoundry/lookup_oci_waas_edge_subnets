output "waas_edge_subnets_lookup_id" {
  description = "Map of id values across all waas_edge_subnets_lookup, keyed the same as var.waas_edge_subnets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_waas_edge_subnets.waas_edge_subnets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waas_edge_subnets_lookup_edge_subnets" {
  description = "Map of edge_subnets values across all waas_edge_subnets_lookup, keyed the same as var.waas_edge_subnets_lookup except keys with no edge_subnets are omitted"
  value       = { for k, v in data.oci_waas_edge_subnets.waas_edge_subnets_lookup : k => v.edge_subnets if v.edge_subnets != null && length(v.edge_subnets) > 0 }
}
output "waas_edge_subnets_lookup_filter" {
  description = "Map of filter values across all waas_edge_subnets_lookup, keyed the same as var.waas_edge_subnets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_waas_edge_subnets.waas_edge_subnets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

