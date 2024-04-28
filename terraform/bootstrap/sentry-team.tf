resource "sentry_team" "main" {
  organization = sentry_organization.main.slug

  name = "${var.domain}-team"
  slug = "${local.domain_slug}-team"
}