variable "table_name" {
  type        = string
  description = "(Required) The name of the DynamoDB table. Must be unique within the AWS region."
}

variable "hash_key" {
  type        = string
  description = "(Required) The partition key (hash key) attribute name for the table."
}

variable "project_tags" {
  type        = map(string)
  description = "(Required) A map of tags to assign to the resource for resource grouping and cost allocation."
}