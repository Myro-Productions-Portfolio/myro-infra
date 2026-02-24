variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project (used for naming resources)"
  type        = string
  default     = "myro-static-site"
}

variable "domain_name" {
  description = "Optional custom domain name (leave empty to use CloudFront URL)"
  type        = string
  default     = ""
}
