resource "aws_s3_bucket_versioning" "blog" {
  bucket = aws_s3_bucket.blog.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "cdn" {
  bucket = aws_s3_bucket.cdn.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "maps" {
  bucket = aws_s3_bucket.maps.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "wiki" {
  bucket = aws_s3_bucket.wiki.id
  versioning_configuration {
    status = "Enabled"
  }
}
