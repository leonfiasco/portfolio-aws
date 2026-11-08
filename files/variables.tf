variable "domain_name" {
  description = "Your apex domain registered at Namecheap, e.g. example.com"
  type        = string
}

variable "aws_region" {
  description = "Region for the S3 bucket"
  type        = string
  default     = "eu-west-2"
}
