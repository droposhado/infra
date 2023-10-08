resource "aws_ssm_parameter" "gotify_token" {
  name        = "/${var.domain_slug}/k8s/gotify/token"
  description = "Token to connect on Gotify"
  type        = "SecureString"
  value       = aws_db_instance.default.address
}

resource "aws_ssm_parameter" "gotify_url" {
  name        = "/${var.domain_slug}/k8s/gotify/url"
  description = "Gotify host to connect"
  type        = "SecureString"
  value       = aws_db_instance.default.address
}
