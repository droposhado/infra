resource "onepassword_item" "token" {
  vault = data.onepassword_vault.main.uuid

  title    = "Sabedoria - token"
  category = "password"
  password = local.sabedoria_token
}
