resource "sentry_organization" "main" {
  name = "${var.domain}-${var.github_infra_repo}"
  slug = "${var.domain}-${var.github_infra_repo}"

  agree_terms = true
}