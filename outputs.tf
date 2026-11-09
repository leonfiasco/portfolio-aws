output "bucket_name" {
  value = aws_s3_bucket.site.bucket
}


output "cloudfront_domain" {
  value = aws_cloudfront_distribution.site.domain_name
}

output "distribution_id" {
  value = aws_cloudfront_distribution.site.id
}

output "nameservers" {
  value = aws_route53_zone.main.name_servers
}


output "deploy_role_arn" {
  value = aws_iam_role.deploy.arn
}