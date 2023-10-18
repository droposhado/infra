# resource "sentry_project" "furgao" {
#   organization = sentry_organization.droposhado_org.slug
#   teams        = [sentry_team.main.slug]

#   name = data.terraform_remote_state.seeds.outputs.furgao
#   slug = data.terraform_remote_state.seeds.outputs.furgao

#   platform = "python-awslambda"
# }

resource "sentry_project" "maya" {
  organization = sentry_organization.droposhado_org.slug
  teams        = [sentry_team.main.slug]

  name = data.terraform_remote_state.seeds.outputs.maya.name
  slug = data.terraform_remote_state.seeds.outputs.maya.name

  platform = "python-flask"
}

resource "sentry_project" "sabedoria" {
  organization = sentry_organization.droposhado_org.slug
  teams        = [sentry_team.main.slug]

  name = data.terraform_remote_state.seeds.outputs.sabedoria.name
  slug = data.terraform_remote_state.seeds.outputs.sabedoria.name

  platform = "python-flask"
}

resource "sentry_project" "wooka" {
  organization = sentry_organization.droposhado_org.slug
  teams        = [sentry_team.main.slug]

  name = data.terraform_remote_state.seeds.outputs.wooka.name
  slug = data.terraform_remote_state.seeds.outputs.wooka.name

  platform = "python-flask"
}
