variable "quota_configs" {
  description = <<EOT
Map of quota_configs, attributes below
Optional:
    - absolute_rate_limit_exempt_paths
    - enable_rate_limit_audit_logging
    - enable_rate_limit_response_headers
    - namespace
    - rate_limit_exempt_paths
EOT

  type = map(object({
    absolute_rate_limit_exempt_paths   = optional(set(string))
    enable_rate_limit_audit_logging    = optional(bool)
    enable_rate_limit_response_headers = optional(bool)
    namespace                          = optional(string)
    rate_limit_exempt_paths            = optional(set(string))
  }))
}

