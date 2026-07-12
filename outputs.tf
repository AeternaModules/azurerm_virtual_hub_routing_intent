output "virtual_hub_routing_intents_name" {
  description = "Map of name values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.name }
}
output "virtual_hub_routing_intents_routing_policy" {
  description = "Map of routing_policy values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.routing_policy }
}
output "virtual_hub_routing_intents_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = { for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : k => v.virtual_hub_id }
}

