resource "onepassword_item" "token" {
  vault = data.onepassword_vault.main.uuid

  title    = "Maya - token"
  category = "password"
  password = local.maya_token
}
