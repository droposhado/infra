resource "aws_s3_bucket_acl" "maya" {
  depends_on = [aws_s3_bucket_ownership_controls.maya]

  bucket = aws_s3_bucket.maya.id
  acl    = "private"
}

resource "aws_s3_bucket_acl" "sabedoria" {
  depends_on = [aws_s3_bucket_ownership_controls.sabedoria]

  bucket = aws_s3_bucket.sabedoria.id
  acl    = "private"
}
