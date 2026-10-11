variable "security_monitoring_default_rules" {
  description = <<EOT
Map of security_monitoring_default_rules, attributes below
Optional:
    - custom_message
    - custom_name
    - custom_tags
    - enabled
    - case (block):
        - custom_status (optional)
        - notifications (optional)
        - status (required)
    - filter (block):
        - action (required)
        - query (required)
    - options (block):
        - decrease_criticality_based_on_env (optional)
    - query (block):
        - agent_rule (optional, block):
            - agent_rule_id (required)
            - expression (required)
        - custom_query_extension (optional)
EOT

  type = map(object({
    custom_message = optional(string)
    custom_name    = optional(string)
    custom_tags    = optional(set(string))
    enabled        = optional(bool)
    case = optional(list(object({
      custom_status = optional(string)
      notifications = optional(list(string))
      status        = string
    })))
    filter = optional(list(object({
      action = string
      query  = string
    })))
    options = optional(list(object({
      decrease_criticality_based_on_env = optional(bool)
    })))
    query = optional(list(object({
      agent_rule = optional(list(object({
        agent_rule_id = string
        expression    = string
      })))
      custom_query_extension = optional(string)
    })))
  }))
}

