resource "sentry_key" "main" {
  organization = var.org_slug

  project = sentry_project.main.slug
  name    = "tf-managed-${sentry_project.main.slug}-${var.project_platform}"
}
