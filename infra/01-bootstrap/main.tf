# AWS S3 Bucket for storing Terraform state files
resource "aws_s3_bucket" "terraform_state" {
  bucket              = var.state_bucket_name
  force_destroy       = var.force_destroy
  object_lock_enabled = true # Required for Terraform S3 native state locking (v1.10.0+)
}

# Enable S3 Versioning to keep a history of state files
resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Configure default server-side encryption using AES256
resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Block all public access to prevent accidental data leaks of the state file
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}