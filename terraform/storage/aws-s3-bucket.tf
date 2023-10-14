resource "aws_s3_bucket" "cdn" {
  bucket = local.cdn_name

  tags = local.tags
}

resource "aws_s3_bucket" "blog" {
  bucket = local.blog_name

  tags = local.tags
}

resource "aws_s3_bucket" "maps" {
  bucket = local.maps_name

  tags = local.tags
}

resource "aws_s3_bucket" "wiki" {
  bucket = local.wiki_name

  tags = local.tags
}
