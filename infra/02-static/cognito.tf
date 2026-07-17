module "cognito" {
  source = "../modules/cognito"

  user_pool_name = "${var.project_name}-user-pool"
  client_name    = "${var.project_name}-app-client"
  project_tags = var.project_tags
}