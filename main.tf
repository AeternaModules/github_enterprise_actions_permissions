resource "github_enterprise_actions_permissions" "enterprise_actions_permissionses" {
  for_each = var.enterprise_actions_permissionses

  enabled_organizations = each.value.enabled_organizations
  enterprise_slug       = each.value.enterprise_slug
  allowed_actions       = each.value.allowed_actions

  dynamic "allowed_actions_config" {
    for_each = each.value.allowed_actions_config != null ? [each.value.allowed_actions_config] : []
    content {
      github_owned_allowed = allowed_actions_config.value.github_owned_allowed
      patterns_allowed     = allowed_actions_config.value.patterns_allowed
      verified_allowed     = allowed_actions_config.value.verified_allowed
    }
  }

  dynamic "enabled_organizations_config" {
    for_each = each.value.enabled_organizations_config != null ? [each.value.enabled_organizations_config] : []
    content {
      organization_ids = enabled_organizations_config.value.organization_ids
    }
  }
}

