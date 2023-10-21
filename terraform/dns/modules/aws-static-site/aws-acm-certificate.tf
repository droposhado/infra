resource "aws_acm_certificate" "main" {
  domain_name       = var.domain
  validation_method = "DNS"

  # tags = {
  #   Environment = "test"
  # }

  lifecycle {
    create_before_destroy = true
  }
}
