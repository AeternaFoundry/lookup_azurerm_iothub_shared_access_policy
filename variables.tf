variable "iothub_shared_access_policy_lookup" {
  description = <<EOT
Map of iothub_shared_access_policy_lookup, attributes below
Required:
    - iothub_name
    - name
    - resource_group_name
EOT

  type = map(object({
    iothub_name         = string
    name                = string
    resource_group_name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policy_lookup : (
        can(regex("[a-zA-Z0-9!._-]{1,64}", v.name))
      )
    ])
    error_message = ""
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policy_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policy_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policy_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

