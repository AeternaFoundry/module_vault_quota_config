resource "vault_quota_config" "quota_configs" {
  for_each = var.quota_configs

  absolute_rate_limit_exempt_paths   = each.value.absolute_rate_limit_exempt_paths
  enable_rate_limit_audit_logging    = each.value.enable_rate_limit_audit_logging
  enable_rate_limit_response_headers = each.value.enable_rate_limit_response_headers
  namespace                          = each.value.namespace
  rate_limit_exempt_paths            = each.value.rate_limit_exempt_paths
}

