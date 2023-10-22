output "blog" {
  value = module.blog_static_site.bucket
}

output "cdn" {
  value = aws_s3_bucket.cdn
}

output "maya" {
  value = aws_s3_bucket.maya
}

output "maps" {
  value = aws_s3_bucket.maps
}

output "sabedoria" {
  value = aws_s3_bucket.sabedoria
}

output "wiki" {
  value = aws_s3_bucket.wiki
}
