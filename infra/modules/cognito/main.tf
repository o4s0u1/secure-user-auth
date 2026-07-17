resource "aws_cognito_user_pool" "this" {
  name = var.user_pool_name

  # Enable signing in with email instead of a raw username
  username_attributes      = ["email"]
  auto_verified_attributes = ["email"]

  # Strict password policy for security compliance
  password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }

  # Configure email verification message template
  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
    email_subject        = var.email_subject
    email_message        = var.email_message
  }

  tags = var.project_tags
}

resource "aws_cognito_user_pool_client" "this" {
  name         = var.client_name
  user_pool_id = aws_cognito_user_pool.this.id

  # Authentication flows allowed for the client application
  explicit_auth_flows = [
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH",
    "ALLOW_USER_SRP_AUTH"
  ]

  # Set to false since client-side authentication (SPA/Mobile) cannot securely store secrets
  generate_secret = false
}