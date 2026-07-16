output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "The Amazon Resource Name (ARN) of the S3 bucket used for remote state storage."
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.terraform_state.id
  description = "The name of the S3 bucket used for remote state storage."
}