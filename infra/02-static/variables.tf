variable "aws_region" {
  type        = string
  description = "The AWS region where resources will be deployed."
}

variable "project_name" {
  type        = string
  description = "The name of the project, used as prefix for resource names."
}

variable "project_tags" {
  type        = map(string)
  description = "Metadata tags representing the project identity and ownership."
}
