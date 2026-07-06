output "virtual_hub_routing_intents" {
  description = "All virtual_hub_routing_intent resources"
  value       = azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents
}
output "virtual_hub_routing_intents_name" {
  description = "List of name values across all virtual_hub_routing_intents"
  value       = [for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : v.name]
}
output "virtual_hub_routing_intents_routing_policy" {
  description = "List of routing_policy values across all virtual_hub_routing_intents"
  value       = [for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : v.routing_policy]
}
output "virtual_hub_routing_intents_virtual_hub_id" {
  description = "List of virtual_hub_id values across all virtual_hub_routing_intents"
  value       = [for k, v in azurerm_virtual_hub_routing_intent.virtual_hub_routing_intents : v.virtual_hub_id]
}

