resource "github_repository_webhook" "all" {
  for_each = toset(data.github_repositories.droposhado.names)

  repository = each.value
  configuration {
    url          = "https://webhook.${var.domain}/github"
    content_type = "json"
    insecure_ssl = false
    secret       = var.github_verification_secret
  }

  active = false

  events = ["*"]
}
