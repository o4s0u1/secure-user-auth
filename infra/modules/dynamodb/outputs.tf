output "table_arn" {
  value       = aws_dynamodb_table.this.arn
  description = "The Amazon Resource Name (ARN) of the DynamoDB table, useful for IAM policy definitions."
}

output "table_name" {
  value       = aws_dynamodb_table.this.name
  description = "The actual name of the DynamoDB table."
}