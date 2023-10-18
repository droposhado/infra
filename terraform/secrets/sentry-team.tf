resource "sentry_team" "main" {
  organization = sentry_organization.droposhado_org.slug

  name = data.terraform_remote_state.seeds.outputs.team.name
  slug = data.terraform_remote_state.seeds.outputs.team.name
}
