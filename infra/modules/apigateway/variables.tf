variable "api_gateway_name" {
  type        = string
  description = "(Required) The explicit name of the REST API Gateway"
}

variable "authorizer_name" {
  type        = string
  description = "(Required) The explicit name of the Cognito User Pool Authorizer"
}

variable "cognito_user_pool_arn" {
  type        = string
  description = "(Required) The ARN of the Cognito User Pool used by the authorizer"
}

variable "project_tags" {
  type        = map(string)
  description = "(Required) A map of tags to assign to the API Gateway resources"
}