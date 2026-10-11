resource "datadog_security_monitoring_default_rule" "security_monitoring_default_rules" {
  for_each = var.security_monitoring_default_rules

  custom_message = each.value.custom_message
  custom_name    = each.value.custom_name
  custom_tags    = each.value.custom_tags
  enabled        = each.value.enabled

  dynamic "case" {
    for_each = each.value.case != null ? each.value.case : []
    content {
      custom_status = case.value.custom_status
      notifications = case.value.notifications
      status        = case.value.status
    }
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      action = filter.value.action
      query  = filter.value.query
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      decrease_criticality_based_on_env = options.value.decrease_criticality_based_on_env
    }
  }

  dynamic "query" {
    for_each = each.value.query != null ? each.value.query : []
    content {
      dynamic "agent_rule" {
        for_each = query.value.agent_rule != null ? query.value.agent_rule : []
        content {
          agent_rule_id = agent_rule.value.agent_rule_id
          expression    = agent_rule.value.expression
        }
      }
      custom_query_extension = query.value.custom_query_extension
    }
  }
}

