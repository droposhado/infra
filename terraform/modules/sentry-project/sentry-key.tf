resource "sentry_key" "main" {
  organization = sentry_organization.main.slug

  project = sentry_project.main.slug
  name    = "tf-managed-${var.project_slug}-${var.project_platform}"
}
