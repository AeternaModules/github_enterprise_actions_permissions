output "enterprise_actions_permissionses_id" {
  description = "Map of id values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.id }
}
output "enterprise_actions_permissionses_allowed_actions" {
  description = "Map of allowed_actions values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.allowed_actions }
}
output "enterprise_actions_permissionses_allowed_actions_config" {
  description = "Map of allowed_actions_config values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.allowed_actions_config }
}
output "enterprise_actions_permissionses_enabled_organizations" {
  description = "Map of enabled_organizations values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.enabled_organizations }
}
output "enterprise_actions_permissionses_enabled_organizations_config" {
  description = "Map of enabled_organizations_config values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.enabled_organizations_config }
}
output "enterprise_actions_permissionses_enterprise_slug" {
  description = "Map of enterprise_slug values across all enterprise_actions_permissionses, keyed the same as var.enterprise_actions_permissionses"
  value       = { for k, v in github_enterprise_actions_permissions.enterprise_actions_permissionses : k => v.enterprise_slug }
}

