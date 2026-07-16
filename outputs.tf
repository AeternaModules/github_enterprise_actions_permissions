output "enterprise_actions_permissionses_id" {
  description = "Map of id values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "enterprise_actions_permissionses_allowed_actions" {
  description = "Map of allowed_actions values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.allowed_actions if v.allowed_actions != null && length(v.allowed_actions) > 0 }
}
output "enterprise_actions_permissionses_allowed_actions_config" {
  description = "Map of allowed_actions_config values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.allowed_actions_config if v.allowed_actions_config != null && length(v.allowed_actions_config) > 0 }
}
output "enterprise_actions_permissionses_enabled_organizations" {
  description = "Map of enabled_organizations values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.enabled_organizations if v.enabled_organizations != null && length(v.enabled_organizations) > 0 }
}
output "enterprise_actions_permissionses_enabled_organizations_config" {
  description = "Map of enabled_organizations_config values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.enabled_organizations_config if v.enabled_organizations_config != null && length(v.enabled_organizations_config) > 0 }
}
output "enterprise_actions_permissionses_enterprise_slug" {
  description = "Map of enterprise_slug values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.enterprise_slug if v.enterprise_slug != null && length(v.enterprise_slug) > 0 }
}

