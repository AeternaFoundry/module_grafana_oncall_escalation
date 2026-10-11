variable "oncall_escalations" {
  description = <<EOT
Map of oncall_escalations, attributes below
Required:
    - escalation_chain_id
    - position
    - type
Optional:
    - action_to_trigger
    - duration
    - group_to_notify
    - important
    - notify_if_time_from
    - notify_if_time_to
    - notify_on_call_from_schedule
    - notify_to_team_members
    - num_alerts_in_window
    - num_minutes_in_window
    - persons_to_notify
    - persons_to_notify_next_each_time
    - severity
EOT

  type = map(object({
    escalation_chain_id              = string
    position                         = number
    type                             = string
    action_to_trigger                = optional(string)
    duration                         = optional(number)
    group_to_notify                  = optional(string)
    important                        = optional(bool)
    notify_if_time_from              = optional(string)
    notify_if_time_to                = optional(string)
    notify_on_call_from_schedule     = optional(string)
    notify_to_team_members           = optional(string)
    num_alerts_in_window             = optional(number)
    num_minutes_in_window            = optional(number)
    persons_to_notify                = optional(set(string))
    persons_to_notify_next_each_time = optional(set(string))
    severity                         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.oncall_escalations : (
        v.duration == null || (v.duration >= 60 && v.duration <= 86400)
      )
    ])
    error_message = "must be between 60 and 86400"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

