data "aws_s3_object" "project_furgao_zip" {
  bucket = aws_s3_bucket.cdn.id
  key    = "projects/furgao.zip"
}

data "aws_s3_object" "project_maya_zip" {
  bucket = aws_s3_bucket.cdn.id
  key    = "projects/maya.zip"
}
