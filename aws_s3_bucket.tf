resource "aws_s3_bucket" "this" {
  bucket = local.s3_bucket_name
  tags   = module.aws_user_tags.tags
}
#