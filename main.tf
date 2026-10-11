data "oci_waas_edge_subnets" "waas_edge_subnets_lookup" {
  for_each = var.waas_edge_subnets_lookup


  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

