resource "aws_s3_bucket" "maya" {
  bucket = local.maya.name

  tags = local.tags
}

resource "aws_s3_bucket" "sabedoria" {
  bucket = local.sabedoria.name

  tags = local.tags
}
