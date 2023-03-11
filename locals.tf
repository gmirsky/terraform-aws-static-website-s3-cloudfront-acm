locals {
  s3_origin_id   = "${var.domain_name}-orgin-id"
  s3_bucket_name = var.s3_bucket_custom_name == "" ? "${var.domain_name}-${data.aws_caller_identity.current.account_id}" : "${var.s3_bucket_custom_name}-${data.aws_caller_identity.current.account_id}"
  error_html = templatefile("${path.module}/site-content/404.html.tftpl", {
    domain_name = var.domain_name
    }
  )
}
#