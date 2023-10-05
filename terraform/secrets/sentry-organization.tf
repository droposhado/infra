resource "sentry_organization" "droposhado_org" {
  name = "droposhado-org-${var.github_infra_repo}"
  slug = "droposhado-org-${var.github_infra_repo}"

  agree_terms = true
}
