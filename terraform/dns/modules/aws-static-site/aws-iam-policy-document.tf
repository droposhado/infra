data "aws_iam_policy_document" "main" {
  statement {
    actions = ["s3:GetObject"]
    resources = [
      "${var.bucket.arn}/",
      "${var.bucket.arn}/*"
    ]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.main.iam_arn]
    }
  }

  statement {
    actions   = ["s3:ListBucket"]
    resources = [var.bucket.arn]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.main.iam_arn]
    }
  }
}
