variable "waas_edge_subnets_lookup" {
  description = <<EOT
Map of waas_edge_subnets_lookup, attributes below
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

