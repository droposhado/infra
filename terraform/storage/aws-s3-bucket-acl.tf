resource "aws_s3_bucket_acl" "blog" {
  depends_on = [aws_s3_bucket_ownership_controls.blog]

  bucket = aws_s3_bucket.blog.id
  acl    = "private"
}

resource "aws_s3_bucket_acl" "cdn" {
  depends_on = [aws_s3_bucket_ownership_controls.cdn]

  bucket = aws_s3_bucket.cdn.id
  acl    = "private"
}

resource "aws_s3_bucket_acl" "maps" {
  depends_on = [aws_s3_bucket_ownership_controls.maps]

  bucket = aws_s3_bucket.maps.id
  acl    = "private"
}

resource "aws_s3_bucket_acl" "wiki" {
  depends_on = [aws_s3_bucket_ownership_controls.wiki]

  bucket = aws_s3_bucket.wiki.id
  acl    = "private"
}
