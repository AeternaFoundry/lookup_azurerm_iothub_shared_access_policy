output "iothub_shared_access_policy_lookup_id" {
  description = "Map of id values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iothub_shared_access_policy_lookup_iothub_name" {
  description = "Map of iothub_name values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.iothub_name if v.iothub_name != null && length(v.iothub_name) > 0 }
}
output "iothub_shared_access_policy_lookup_name" {
  description = "Map of name values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iothub_shared_access_policy_lookup_primary_connection_string" {
  description = "Map of primary_connection_string values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.primary_connection_string if v.primary_connection_string != null && length(v.primary_connection_string) > 0 }
  sensitive   = true
}
output "iothub_shared_access_policy_lookup_primary_key" {
  description = "Map of primary_key values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.primary_key if v.primary_key != null && length(v.primary_key) > 0 }
  sensitive   = true
}
output "iothub_shared_access_policy_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "iothub_shared_access_policy_lookup_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.secondary_connection_string if v.secondary_connection_string != null && length(v.secondary_connection_string) > 0 }
  sensitive   = true
}
output "iothub_shared_access_policy_lookup_secondary_key" {
  description = "Map of secondary_key values across all iothub_shared_access_policy_lookup, keyed the same as var.iothub_shared_access_policy_lookup"
  value       = { for k, v in data.azurerm_iothub_shared_access_policy.iothub_shared_access_policy_lookup : k => v.secondary_key if v.secondary_key != null && length(v.secondary_key) > 0 }
  sensitive   = true
}

