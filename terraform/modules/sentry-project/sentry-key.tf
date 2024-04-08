resource "sentry_key" "wooka" {
  organization = sentry_organization.droposhado_org.slug

  project = sentry_project.wooka.slug
  name    = "k8s-${data.terraform_remote_state.seeds.outputs.wooka.name}"
}
