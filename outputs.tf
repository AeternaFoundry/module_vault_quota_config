output "quota_configs_absolute_rate_limit_exempt_paths" {
  description = "Map of absolute_rate_limit_exempt_paths values across all quota_configs, keyed the same as var.quota_configs except keys with no absolute_rate_limit_exempt_paths are omitted"
  value       = { for k, v in vault_quota_config.quota_configs : k => v.absolute_rate_limit_exempt_paths if v.absolute_rate_limit_exempt_paths != null && length(v.absolute_rate_limit_exempt_paths) > 0 }
}
output "quota_configs_enable_rate_limit_audit_logging" {
  description = "Map of enable_rate_limit_audit_logging values across all quota_configs, keyed the same as var.quota_configs except keys with no enable_rate_limit_audit_logging are omitted"
  value       = { for k, v in vault_quota_config.quota_configs : k => v.enable_rate_limit_audit_logging if v.enable_rate_limit_audit_logging != null }
}
output "quota_configs_enable_rate_limit_response_headers" {
  description = "Map of enable_rate_limit_response_headers values across all quota_configs, keyed the same as var.quota_configs except keys with no enable_rate_limit_response_headers are omitted"
  value       = { for k, v in vault_quota_config.quota_configs : k => v.enable_rate_limit_response_headers if v.enable_rate_limit_response_headers != null }
}
output "quota_configs_namespace" {
  description = "Map of namespace values across all quota_configs, keyed the same as var.quota_configs except keys with no namespace are omitted"
  value       = { for k, v in vault_quota_config.quota_configs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "quota_configs_rate_limit_exempt_paths" {
  description = "Map of rate_limit_exempt_paths values across all quota_configs, keyed the same as var.quota_configs except keys with no rate_limit_exempt_paths are omitted"
  value       = { for k, v in vault_quota_config.quota_configs : k => v.rate_limit_exempt_paths if v.rate_limit_exempt_paths != null && length(v.rate_limit_exempt_paths) > 0 }
}

