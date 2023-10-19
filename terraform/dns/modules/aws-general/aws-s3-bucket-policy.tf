# resource "aws_s3_bucket_policy" "blog" {
#   bucket = aws_s3_bucket.blog.id
#   policy = data.aws_iam_policy_document.blog.json
# }

# resource "aws_s3_bucket_policy" "cdn" {
#   bucket = aws_s3_bucket.cdn.id
#   policy = data.aws_iam_policy_document.cdn.json
# }

# resource "aws_s3_bucket_policy" "maps" {
#   bucket = aws_s3_bucket.maps.id
#   policy = data.aws_iam_policy_document.maps.json
# }

# resource "aws_s3_bucket_policy" "wiki" {
#   bucket = aws_s3_bucket.wiki.id
#   policy = data.aws_iam_policy_document.wiki.json
# }
