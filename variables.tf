variable "personal_access_tokens" {
  description = <<EOT
Map of personal_access_tokens, attributes below
Required:
    - name
    - scopes
    - user_id
Optional:
    - description
    - expires_at
    - rotation_configuration
    - validate_past_expiration_date
EOT

  type = map(object({
    name        = string
    scopes      = set(string)
    user_id     = number
    description = optional(string)
    expires_at  = optional(string)
    rotation_configuration = optional(object({
      expiration_days    = number
      rotate_before_days = number
    }))
    validate_past_expiration_date = optional(bool)
  }))
}

