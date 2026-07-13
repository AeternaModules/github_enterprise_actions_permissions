variable "enterprise_actions_permissionses" {
  description = <<EOT
Map of enterprise_actions_permissionses, attributes below
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
  # --- Unconfirmed validation candidates, derived from github_enterprise_actions_permissions's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: allowed_actions
  #   condition: contains(["all", "local_only", "selected"], value)
  #   message:   must be one of: all, local_only, selected
  # path: enabled_organizations
  #   condition: contains(["all", "none", "selected"], value)
  #   message:   must be one of: all, none, selected
}

