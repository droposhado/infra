resource "sentry_key" "maya" {
  organization = sentry_organization.droposhado_org.slug

  project = sentry_project.maya.slug
  name    = "k8s-${data.terraform_remote_state.seeds.outputs.maya.name}"
}

resource "sentry_key" "sabedoria" {
  organization = sentry_organization.droposhado_org.slug

  project = sentry_project.sabedoria.slug
  name    = "k8s-${data.terraform_remote_state.seeds.outputs.sabedoria.name}"
}

resource "sentry_key" "wooka" {
  organization = sentry_organization.droposhado_org.slug

  project = sentry_project.wooka.slug
  name    = "k8s-${data.terraform_remote_state.seeds.outputs.wooka.name}"
}
