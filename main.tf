data "azurerm_iothub_shared_access_policy" "iothub_shared_access_policy_lookup" {
  for_each = var.iothub_shared_access_policy_lookup

  iothub_name         = each.value.iothub_name
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

