variable "backup_selections" {
  description = <<EOT
Map of backup_selections, attributes below
Required:
    - iam_role_arn
    - name
    - plan_id
Optional:
    - not_resources
    - region
    - resources
    - condition (block):
        - string_equals (optional, block):
            - key (required)
            - value (required)
        - string_like (optional, block):
            - key (required)
            - value (required)
        - string_not_equals (optional, block):
            - key (required)
            - value (required)
        - string_not_like (optional, block):
            - key (required)
            - value (required)
    - selection_tag (block):
        - key (required)
        - type (required)
        - value (required)
EOT

  type = map(object({
    iam_role_arn  = string
    name          = string
    plan_id       = string
    not_resources = optional(set(string))
    region        = optional(string)
    resources     = optional(set(string))
    condition = optional(list(object({
      string_equals = optional(list(object({
        key   = string
        value = string
      })))
      string_like = optional(list(object({
        key   = string
        value = string
      })))
      string_not_equals = optional(list(object({
        key   = string
        value = string
      })))
      string_not_like = optional(list(object({
        key   = string
        value = string
      })))
    })))
    selection_tag = optional(list(object({
      key   = string
      type  = string
      value = string
    })))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

