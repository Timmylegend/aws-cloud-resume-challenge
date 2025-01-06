variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-2" 
}

variable "aws_profile" {
  description = "The AWS CLI profile to use"
  type        = string
  default     = "default"
}

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "visitorcounter"
}

variable "environment" {
  description = "The environment for deployment (e.g., test, prod)"
  type        = string
  default     = "test" 
}