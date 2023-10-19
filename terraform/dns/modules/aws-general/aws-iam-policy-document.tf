# data "aws_iam_policy_document" "cdn" {
#   statement {
#     actions = ["s3:GetObject"]
#     resources = [
#       "${aws_s3_bucket.cdn.arn}/",
#       "${aws_s3_bucket.cdn.arn}/*"
#     ]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.cdn.iam_arn]
#     }
#   }

#   statement {
#     actions   = ["s3:ListBucket"]
#     resources = [aws_s3_bucket.cdn.arn]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.cdn.iam_arn]
#     }
#   }
# }

# data "aws_iam_policy_document" "blog" {
#   statement {
#     actions = ["s3:GetObject"]
#     resources = [
#       "${aws_s3_bucket.blog.arn}/",
#       "${aws_s3_bucket.blog.arn}/*"
#     ]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.blog.iam_arn]
#     }
#   }

#   statement {
#     actions   = ["s3:ListBucket"]
#     resources = [aws_s3_bucket.blog.arn]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.blog.iam_arn]
#     }
#   }
# }

# data "aws_iam_policy_document" "maps" {
#   statement {
#     actions = ["s3:GetObject"]
#     resources = [
#       "${aws_s3_bucket.maps.arn}/",
#       "${aws_s3_bucket.maps.arn}/*"
#     ]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.maps.iam_arn]
#     }
#   }

#   statement {
#     actions   = ["s3:ListBucket"]
#     resources = [aws_s3_bucket.maps.arn]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.maps.iam_arn]
#     }
#   }
# }

# data "aws_iam_policy_document" "wiki" {
#   statement {
#     actions = ["s3:GetObject"]
#     resources = [
#       "${aws_s3_bucket.wiki.arn}/",
#       "${aws_s3_bucket.wiki.arn}/*"
#     ]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.wiki.iam_arn]
#     }
#   }

#   statement {
#     actions   = ["s3:ListBucket"]
#     resources = [aws_s3_bucket.wiki.arn]

#     principals {
#       type        = "AWS"
#       identifiers = [aws_cloudfront_origin_access_identity.wiki.iam_arn]
#     }
#   }
# }
