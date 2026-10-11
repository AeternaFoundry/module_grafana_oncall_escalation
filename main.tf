resource "grafana_oncall_escalation" "oncall_escalations" {
  for_each = var.oncall_escalations

  escalation_chain_id              = each.value.escalation_chain_id
  position                         = each.value.position
  type                             = each.value.type
  action_to_trigger                = each.value.action_to_trigger
  duration                         = each.value.duration
  group_to_notify                  = each.value.group_to_notify
  important                        = each.value.important
  notify_if_time_from              = each.value.notify_if_time_from
  notify_if_time_to                = each.value.notify_if_time_to
  notify_on_call_from_schedule     = each.value.notify_on_call_from_schedule
  notify_to_team_members           = each.value.notify_to_team_members
  num_alerts_in_window             = each.value.num_alerts_in_window
  num_minutes_in_window            = each.value.num_minutes_in_window
  persons_to_notify                = each.value.persons_to_notify
  persons_to_notify_next_each_time = each.value.persons_to_notify_next_each_time
  severity                         = each.value.severity
}

