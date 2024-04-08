resource "sentry_project" "maya" {
  organization = sentry_organization.droposhado_org.slug
  teams        = [sentry_team.main.slug]

  name = data.terraform_remote_state.seeds.outputs.maya.name
  slug = data.terraform_remote_state.seeds.outputs.maya.name

  platform = "python-flask"
}
