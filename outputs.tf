output "security_monitoring_default_rules_id" {
  description = "Map of id values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no id are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_monitoring_default_rules_case" {
  description = "Map of case values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no case are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.case if v.case != null && length(v.case) > 0 }
}
output "security_monitoring_default_rules_custom_message" {
  description = "Map of custom_message values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no custom_message are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.custom_message if v.custom_message != null && length(v.custom_message) > 0 }
}
output "security_monitoring_default_rules_custom_name" {
  description = "Map of custom_name values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no custom_name are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.custom_name if v.custom_name != null && length(v.custom_name) > 0 }
}
output "security_monitoring_default_rules_custom_tags" {
  description = "Map of custom_tags values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no custom_tags are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.custom_tags if v.custom_tags != null && length(v.custom_tags) > 0 }
}
output "security_monitoring_default_rules_enabled" {
  description = "Map of enabled values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no enabled are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.enabled if v.enabled != null }
}
output "security_monitoring_default_rules_filter" {
  description = "Map of filter values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no filter are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "security_monitoring_default_rules_options" {
  description = "Map of options values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no options are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.options if v.options != null && length(v.options) > 0 }
}
output "security_monitoring_default_rules_query" {
  description = "Map of query values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no query are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.query if v.query != null && length(v.query) > 0 }
}
output "security_monitoring_default_rules_type" {
  description = "Map of type values across all security_monitoring_default_rules, keyed the same as var.security_monitoring_default_rules except keys with no type are omitted"
  value       = { for k, v in datadog_security_monitoring_default_rule.security_monitoring_default_rules : k => v.type if v.type != null && length(v.type) > 0 }
}

