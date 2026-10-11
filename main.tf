resource "gitlab_personal_access_token" "personal_access_tokens" {
  for_each = var.personal_access_tokens

  name                          = each.value.name
  scopes                        = each.value.scopes
  user_id                       = each.value.user_id
  description                   = each.value.description
  expires_at                    = each.value.expires_at
  rotation_configuration        = each.value.rotation_configuration
  validate_past_expiration_date = each.value.validate_past_expiration_date
}

