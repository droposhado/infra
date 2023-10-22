# resource "aws_s3_object" "project_furgao_zip" {
#   bucket = module.cdn_static_site.bucket.id
#   key    = "projects/furgao.zip"
#   source = "${path.module}/dummy.zip"

#   lifecycle {
#     ignore_changes = [
#       etag,
#       source
#     ]
#   }
# }
