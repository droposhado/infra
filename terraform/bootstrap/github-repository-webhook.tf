resource "github_repository_webhook" "main" {
  for_each = toset(data.github_repositories.me.names)

  repository = each.value
  configuration {
    url          = var.github_webhook
    content_type = "json"
    insecure_ssl = false
    secret       = var.github_verification_secret
  }

  active = true

  events = ["*"]
}
