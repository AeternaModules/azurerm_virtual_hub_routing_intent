output "virtual_hub_routing_intents_id" {
  description = "Map of id values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_hub_routing_intents_name" {
  description = "Map of name values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_hub_routing_intents_routing_policy" {
  description = "Map of routing_policy values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.routing_policy if v.routing_policy != null && length(v.routing_policy) > 0 }
}
output "virtual_hub_routing_intents_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.virtual_hub_id if v.virtual_hub_id != null && length(v.virtual_hub_id) > 0 }
}

