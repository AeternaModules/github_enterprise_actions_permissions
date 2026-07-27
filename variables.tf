variable "enterprise_actions_permissions" {
  description = <<EOT
Map of enterprise_actions_permissions, attributes below
Required:
    - enabled_organizations
    - enterprise_slug
Optional:
    - allowed_actions
    - allowed_actions_config (block):
        - github_owned_allowed (required)
        - patterns_allowed (optional)
        - verified_allowed (optional)
    - enabled_organizations_config (block):
        - organization_ids (required)
EOT

  type = map(object({
    enabled_organizations = string
    enterprise_slug       = string
    allowed_actions       = optional(string)
    allowed_actions_config = optional(object({
      github_owned_allowed = bool
      patterns_allowed     = optional(set(string))
      verified_allowed     = optional(bool)
    }))
    enabled_organizations_config = optional(object({
      organization_ids = set(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.enterprise_actions_permissions : (
        v.allowed_actions == null || (contains(["all", "local_only", "selected"], v.allowed_actions))
      )
    ])
    error_message = "must be one of: all, local_only, selected"
  }
  validation {
    condition = alltrue([
      for k, v in var.enterprise_actions_permissions : (
        contains(["all", "none", "selected"], v.enabled_organizations)
      )
    ])
    error_message = "must be one of: all, none, selected"
  }
}

