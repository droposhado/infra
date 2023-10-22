resource "aws_s3_bucket_website_configuration" "cdn" {
  bucket = aws_s3_bucket.cdn.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html"
  }
}

resource "aws_s3_bucket_website_configuration" "maps" {
  bucket = aws_s3_bucket.maps.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html"
  }
}

resource "aws_s3_bucket_website_configuration" "wiki" {
  bucket = aws_s3_bucket.wiki.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html"
  }
}
