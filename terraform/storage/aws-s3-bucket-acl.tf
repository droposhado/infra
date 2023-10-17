resource "aws_s3_bucket_acl" "blog" {
  depends_on = [aws_s3_bucket_ownership_controls.blog]

  bucket                = aws_s3_bucket.blog.id
  expected_bucket_owner = data.aws_caller_identity.current.account_id
  acl                   = "public-read"
}

resource "aws_s3_bucket_acl" "cdn" {
  depends_on = [aws_s3_bucket_ownership_controls.cdn]

  bucket                = aws_s3_bucket.cdn.id
  expected_bucket_owner = data.aws_caller_identity.current.account_id
  acl                   = "public-read"
}

resource "aws_s3_bucket_acl" "maps" {
  depends_on = [aws_s3_bucket_ownership_controls.maps]

  bucket                = aws_s3_bucket.maps.id
  expected_bucket_owner = data.aws_caller_identity.current.account_id
  acl                   = "public-read"
}

resource "aws_s3_bucket_acl" "wiki" {
  depends_on = [aws_s3_bucket_ownership_controls.wiki]

  bucket                = aws_s3_bucket.wiki.id
  expected_bucket_owner = data.aws_caller_identity.current.account_id
  acl                   = "public-read"
}
