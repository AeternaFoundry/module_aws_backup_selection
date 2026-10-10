output "backup_selections_id" {
  description = "Map of id values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_selections_condition" {
  description = "Map of condition values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "backup_selections_iam_role_arn" {
  description = "Map of iam_role_arn values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.iam_role_arn if v.iam_role_arn != null && length(v.iam_role_arn) > 0 }
}
output "backup_selections_name" {
  description = "Map of name values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "backup_selections_not_resources" {
  description = "Map of not_resources values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.not_resources if v.not_resources != null && length(v.not_resources) > 0 }
}
output "backup_selections_plan_id" {
  description = "Map of plan_id values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.plan_id if v.plan_id != null && length(v.plan_id) > 0 }
}
output "backup_selections_region" {
  description = "Map of region values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.region if v.region != null && length(v.region) > 0 }
}
output "backup_selections_resources" {
  description = "Map of resources values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "backup_selections_selection_tag" {
  description = "Map of selection_tag values across all backup_selections, keyed the same as var.backup_selections"
  value       = { for k, v in aws_backup_selection.backup_selections : k => v.selection_tag if v.selection_tag != null && length(v.selection_tag) > 0 }
}

