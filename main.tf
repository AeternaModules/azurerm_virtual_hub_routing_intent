resource "azurerm_virtual_hub_routing_intent" "virtual_hub_routing_intents" {
  for_each = var.virtual_hub_routing_intents

  name           = each.value.name
  virtual_hub_id = each.value.virtual_hub_id

  routing_policy {
    destinations = each.value.routing_policy.destinations
    name         = each.value.routing_policy.name
    next_hop     = each.value.routing_policy.next_hop
  }
}

