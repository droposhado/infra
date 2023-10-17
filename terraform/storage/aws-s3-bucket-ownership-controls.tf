resource "aws_s3_bucket_ownership_controls" "blog" {
  bucket = aws_s3_bucket.blog.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_ownership_controls" "cdn" {
  bucket = aws_s3_bucket.cdn.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_ownership_controls" "maps" {
  bucket = aws_s3_bucket.maps.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_ownership_controls" "wiki" {
  bucket = aws_s3_bucket.wiki.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
