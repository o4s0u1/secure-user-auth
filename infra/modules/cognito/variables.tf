variable "user_pool_name" {
  type        = string
  description = "(Required) The name of the Cognito User Pool."
}

variable "client_name" {
  type        = string
  description = "(Required) The name of the Cognito User Pool Client."
}

variable "project_tags" {
  type        = map(string)
  description = "(Required) A map of tags to assign to the resources."
}

variable "email_subject" {
  type        = string
  default     = "Your verification code"
  description = "(Optional) The subject line of the verification email sent by Cognito."
}

variable "email_message" {
  type        = string
  default     = "Your verification code is {####}. Please enter this code to complete your registration."
  description = "(Optional) The email message body. Must contain the '{####}' placeholder for the verification code."
}