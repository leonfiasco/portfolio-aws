variable "aws_region" {
  description = "Region for the S3 bucket"
  type        = string
  default     = "eu-west-2"
}

variable "bucket" {
  description = "Globally unique name for the site bucket"
  type        = string
}


variable "domain_name" {
  description = "Your apex domain from Namecheap, e.g. example.com"
  type        = string
}

variable "github_repo" {
  description = "GitHub repo that deploys the site, as owner/repo"
  type        = string
}
