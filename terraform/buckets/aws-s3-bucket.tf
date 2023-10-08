resource "aws_s3_bucket" "cdn" {
  bucket = "cdn.${var.domain}"

  tags = local.tags
}

resource "aws_s3_bucket" "blog" {
  bucket = "blog.${var.domain}"

  tags = local.tags
}

resource "aws_s3_bucket" "maps" {
  bucket = "maps.${var.domain}"

  tags = local.tags
}
