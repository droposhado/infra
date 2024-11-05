resource "github_actions_secret" "cloudflare_api_token" {
  repository  = var.github_hightower_repo
  secret_name = "CLOUDFLARE_API_TOKEN"

  # Works fine, because encripted pass base64 value as final and broke build
  #checkov:skip=CKV_GIT_4:This content not need be encrypted
  plaintext_value = local.cloudflare_project_token
}
