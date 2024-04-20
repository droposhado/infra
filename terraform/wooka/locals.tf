locals {
  gcp_email              = data.terraform_remote_state.meta.outputs.google.email
  gcp_google_credentials = data.terraform_remote_state.meta.outputs.google.credentials
  gcp_project_id         = data.terraform_remote_state.meta.outputs.google.project
  gcp_region             = data.terraform_remote_state.meta.outputs.google.region
  sentry_auth_token      = data.terraform_remote_state.meta.outputs.sentry.token
}
