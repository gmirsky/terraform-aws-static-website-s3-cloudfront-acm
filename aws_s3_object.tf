resource "aws_s3_object" "sample_index_html" {
  count        = var.deploy_sample_content == true ? 1 : 0
  bucket       = aws_s3_bucket.this.id
  key          = "index.html"
  source       = "${path.module}/site-content/index.html"
  content_type = "text/html"
  etag         = filemd5("${path.module}/site-content/index.html")
  tags         = module.aws_user_tags.tags
}
#
resource "aws_s3_object" "sample_image" {
  count        = var.deploy_sample_content == true ? 1 : 0
  bucket       = aws_s3_bucket.this.id
  key          = "engine.png"
  source       = "${path.module}/site-content/engine.png"
  content_type = "text/html"
  etag         = filemd5("${path.module}/site-content/engine.png")
  tags         = module.aws_user_tags.tags
}
#
resource "aws_s3_object" "custom_error_page" {
  bucket       = aws_s3_bucket.this.id
  key          = "404.html"
  content      = local.error_html
  content_type = "text/html"
  tags         = module.aws_user_tags.tags
}
#