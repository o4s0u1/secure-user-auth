variable "aws_region" {
  type        = string
  description = "(Required) The AWS region where the bootstrap resources will be deployed."
}

variable "state_bucket_name" {
  type        = string
  description = "(Required) The globally unique name of the S3 bucket used for storing Terraform remote state."
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "(Optional) A boolean that indicates all objects (including all versions) should be deleted from the bucket so that the bucket can be destroyed without error."
}