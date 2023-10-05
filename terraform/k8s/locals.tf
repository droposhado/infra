locals {
  sabedoria = data.terraform_remote_state.names.outputs.sabedoria
  wooka     = data.terraform_remote_state.names.outputs.wooka

  sabedoria_tmp = data.terraform_remote_state.databases.outputs.sabedoria
  sabedoria_db = {
    DATABASE_URL = local.sabedoria_tmp.url
  }

  sabedoria_secrets = merge(tomap(data.terraform_remote_state.secrets.outputs.sabedoria.env), local.sabedoria_db)
  wooka_secrets     = tomap(data.terraform_remote_state.secrets.outputs.wooka.env)
}
