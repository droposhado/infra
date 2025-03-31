resource "onepassword_item" "token" {
  vault = data.onepassword_vault.main.uuid

  title    = "Jornaleiro - token"
  category = "password"
  password = local.jornaleiro_token
}
