output "cloudfront_domain_name" {
  value       = aws_cloudfront_distribution.this.domain_name
  description = "Cloudfront domain name"
  sensitive   = false
}
#
output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.this.id
  description = "Cloudfront distribution ID"
  sensitive   = false
}
#
output "s3_bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = "S3 bucket ARN"
  sensitive   = false
}
#
output "s3_bucket_name" {
  value       = aws_s3_bucket.this.id
  description = "deprecated and will be removed - use `s3_bucket_id`"
  sensitive   = false
}
#
output "s3_bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "S3 bucket ID"
  sensitive   = false
}
#
output "acm_certificate_id" {
  value       = aws_acm_certificate.this.id
  description = "ACM certificate ID"
  sensitive   = false
}
#