resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST" # Serverless scale-to-zero model to optimize cost
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S" # String type for the partition key
  }

  point_in_time_recovery {
    enabled = true # Security compliance: Continuous backups for disaster recovery
  }

  tags = var.project_tags
}