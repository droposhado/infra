resource "onepassword_item" "token" {
  vault = data.onepassword_vault.main.uuid

  title    = "Correnteza - token"
  category = "password"
  password = local.correnteza_token
}
