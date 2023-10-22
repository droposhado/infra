resource "aws_s3_bucket" "sabedoria" {
  bucket = local.sabedoria.name

  tags = local.tags
}

