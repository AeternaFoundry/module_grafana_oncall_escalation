output "oncall_escalations_id" {
  description = "Map of id values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no id are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_escalations_action_to_trigger" {
  description = "Map of action_to_trigger values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no action_to_trigger are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.action_to_trigger if v.action_to_trigger != null && length(v.action_to_trigger) > 0 }
}
output "oncall_escalations_duration" {
  description = "Map of duration values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no duration are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.duration if v.duration != null }
}
output "oncall_escalations_escalation_chain_id" {
  description = "Map of escalation_chain_id values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no escalation_chain_id are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.escalation_chain_id if v.escalation_chain_id != null && length(v.escalation_chain_id) > 0 }
}
output "oncall_escalations_group_to_notify" {
  description = "Map of group_to_notify values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no group_to_notify are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.group_to_notify if v.group_to_notify != null && length(v.group_to_notify) > 0 }
}
output "oncall_escalations_important" {
  description = "Map of important values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no important are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.important if v.important != null }
}
output "oncall_escalations_notify_if_time_from" {
  description = "Map of notify_if_time_from values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no notify_if_time_from are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.notify_if_time_from if v.notify_if_time_from != null && length(v.notify_if_time_from) > 0 }
}
output "oncall_escalations_notify_if_time_to" {
  description = "Map of notify_if_time_to values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no notify_if_time_to are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.notify_if_time_to if v.notify_if_time_to != null && length(v.notify_if_time_to) > 0 }
}
output "oncall_escalations_notify_on_call_from_schedule" {
  description = "Map of notify_on_call_from_schedule values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no notify_on_call_from_schedule are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.notify_on_call_from_schedule if v.notify_on_call_from_schedule != null && length(v.notify_on_call_from_schedule) > 0 }
}
output "oncall_escalations_notify_to_team_members" {
  description = "Map of notify_to_team_members values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no notify_to_team_members are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.notify_to_team_members if v.notify_to_team_members != null && length(v.notify_to_team_members) > 0 }
}
output "oncall_escalations_num_alerts_in_window" {
  description = "Map of num_alerts_in_window values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no num_alerts_in_window are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.num_alerts_in_window if v.num_alerts_in_window != null }
}
output "oncall_escalations_num_minutes_in_window" {
  description = "Map of num_minutes_in_window values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no num_minutes_in_window are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.num_minutes_in_window if v.num_minutes_in_window != null }
}
output "oncall_escalations_persons_to_notify" {
  description = "Map of persons_to_notify values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no persons_to_notify are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.persons_to_notify if v.persons_to_notify != null && length(v.persons_to_notify) > 0 }
}
output "oncall_escalations_persons_to_notify_next_each_time" {
  description = "Map of persons_to_notify_next_each_time values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no persons_to_notify_next_each_time are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.persons_to_notify_next_each_time if v.persons_to_notify_next_each_time != null && length(v.persons_to_notify_next_each_time) > 0 }
}
output "oncall_escalations_position" {
  description = "Map of position values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no position are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.position if v.position != null }
}
output "oncall_escalations_severity" {
  description = "Map of severity values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no severity are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "oncall_escalations_type" {
  description = "Map of type values across all oncall_escalations, keyed the same as var.oncall_escalations except keys with no type are omitted"
  value       = { for k, v in grafana_oncall_escalation.oncall_escalations : k => v.type if v.type != null && length(v.type) > 0 }
}

