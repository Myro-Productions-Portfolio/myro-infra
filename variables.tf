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
  default     = "devops.myroproductions.com"
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate for the custom domain (must be in us-east-1)"
  type        = string
  default     = "arn:aws:acm:us-east-1:498618930321:certificate/c2c23f27-4435-4fe1-8671-b97141a98a72"
}
