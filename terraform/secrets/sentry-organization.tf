resource "sentry_organization" "droposhado_org" {
  name = "${local.domain_slug}-${var.github_infra_repo}"
  slug = "${local.domain_slug}-${var.github_infra_repo}"

  agree_terms = true
}
