output "nameservers" {
  description = "Paste these into Namecheap (Custom DNS)"
  value       = aws_route53_zone.main.name_servers
}

output "bucket_name" {
  value = aws_s3_bucket.site.bucket
}

output "distribution_id" {
  value = aws_cloudfront_distribution.site.id
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.site.domain_name
}
