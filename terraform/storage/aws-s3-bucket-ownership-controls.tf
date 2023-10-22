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

resource "aws_s3_bucket_ownership_controls" "maya" {
  bucket = aws_s3_bucket.maya.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_ownership_controls" "sabedoria" {
  bucket = aws_s3_bucket.sabedoria.id
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
