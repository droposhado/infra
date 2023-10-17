resource "aws_s3_object" "project_furgao_zip" {
  bucket = aws_s3_bucket.cdn.id
  key    = "projects/furgao.zip"
  source = "${path.module}/dummy.zip"

  lifecycle {
    ignore_changes = [
      etag,
      source
    ]
  }
}
