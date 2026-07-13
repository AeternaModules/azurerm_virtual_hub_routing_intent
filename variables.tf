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
    routing_policy = list(object({
      destinations = list(string)
      name         = string
      next_hop     = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_routing_intents : (
        length(v.routing_policy) >= 1
      )
    ])
    error_message = "Each routing_policy list must contain at least 1 items"
  }
}

