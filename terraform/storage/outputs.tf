output "blog" {
  value = module.blog_static_site.bucket
}

output "cdn" {
  value = module.cdn_static_site.bucket
}

# output "maya" {
#   value = aws_s3_bucket.maya
# }

output "maps" {
  value = module.maps_static_site.bucket
}

# output "sabedoria" {
#   value = aws_s3_bucket.sabedoria
# }

output "wiki" {
  value = module.wiki_static_site.bucket
}
