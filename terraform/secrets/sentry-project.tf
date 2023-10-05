resource "sentry_project" "sabedoria" {
  organization = sentry_organization.droposhado_org.slug
  teams        = [sentry_team.main.slug]

  name = data.terraform_remote_state.names.outputs.sabedoria
  slug = data.terraform_remote_state.names.outputs.sabedoria

  platform = "python-flask"
}

resource "sentry_project" "wooka" {
  organization = sentry_organization.droposhado_org.slug
  teams        = [sentry_team.main.slug]

  name = data.terraform_remote_state.names.outputs.wooka
  slug = data.terraform_remote_state.names.outputs.wooka

  platform = "python-flask"
}
