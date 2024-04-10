resource "sentry_project" "main" {
  organization = var.org_slug
  teams        = var.teams

  name = var.project_name
  # slug = var.project_slug

  platform = var.project_platform
}
