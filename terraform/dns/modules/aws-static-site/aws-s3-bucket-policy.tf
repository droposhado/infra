resource "aws_s3_bucket_policy" "main" {
  bucket = local.bucket.id
  policy = data.aws_iam_policy_document.main.json
}
