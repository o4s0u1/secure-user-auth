output "api_gateway_id" {
  value       = aws_api_gateway_rest_api.main.id
  description = "The ID of the REST API Gateway"
}

output "api_gateway_root_resource_id" {
  value       = aws_api_gateway_rest_api.main.root_resource_id
  description = "The Root Resource ID of the REST API Gateway"
}

output "api_gateway_authorizer_id" {
  value       = aws_api_gateway_authorizer.cognito.id
  description = "The ID of the Cognito Authorizer"
}