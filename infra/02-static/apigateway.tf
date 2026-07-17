# Call the streamlined API Gateway module for Static infrastructure
module "apigateway" {
  source = "../modules/apigateway"

  # Explicitly injecting names with prefix at the layer level
  api_gateway_name = "${var.project_name}-api"
  authorizer_name  = "${var.project_name}-cognito-authorizer"

  # Injecting Cognito ARN from the outputs of the cognito module in the same static layer
  # (Assuming your cognito module output is named "user_pool_arn")
  cognito_user_pool_arn = module.cognito.user_pool_arn

  # Passing project tags directly without mutation
  project_tags = var.project_tags
}