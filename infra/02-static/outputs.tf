# --- API Gateway Outputs ---
output "api_gateway_id" {
  value       = module.apigateway.api_gateway_id
  description = "The ID of the REST API Gateway"
}

output "api_gateway_root_resource_id" {
  value       = module.apigateway.api_gateway_root_resource_id
  description = "The Root Resource ID of the REST API Gateway"
}

output "api_gateway_authorizer_id" {
  value       = module.apigateway.api_gateway_authorizer_id
  description = "The ID of the Cognito Authorizer"
}

# --- Cognito Outputs ---
output "cognito_user_pool_id" {
  value       = module.cognito.user_pool_id
}

output "cognito_user_pool_arn" {
  value       = module.cognito.user_pool_arn
}

output "cognito_client_id" {
  value       = module.cognito.client_id
}

# --- DynamoDB Outputs ---
output "dynamodb_table_name" {
  value       = module.dynamodb.table_name
}

output "dynamodb_table_arn" {
  value       = module.dynamodb.table_arn
}