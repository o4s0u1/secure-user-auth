# Create the core REST API Gateway instance
resource "aws_api_gateway_rest_api" "main" {
  name        = var.api_gateway_name
  description = "Serverless REST API Gateway"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  tags = var.project_tags
}

# Create the Cognito Authorizer to secure endpoints
resource "aws_api_gateway_authorizer" "cognito" {
  name             = var.authorizer_name
  rest_api_id      = aws_api_gateway_rest_api.main.id
  type             = "COGNITO_USER_POOLS"
  provider_arns    = [var.cognito_user_pool_arn]
  identity_source  = "method.request.header.Authorization"
}