module "dynamodb" {
  source       = "../modules/dynamodb"

  table_name   = "${var.project_name}-users"
  hash_key     = "userId"
  project_tags = var.project_tags

}