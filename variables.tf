variable "virtual_hub_routing_intents" {
  description = <<EOT
Map of virtual_hub_routing_intents, attributes below
Required:
    - name
    - virtual_hub_id
    - routing_policy (block):
        - destinations (required)
        - name (required)
        - next_hop (required)
EOT

  type = map(object({
    name           = string
    virtual_hub_id = string
    routing_policy = object({
      destinations = list(string)
      name         = string
      next_hop     = string
    })
  }))
}

