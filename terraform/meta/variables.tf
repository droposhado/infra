
variable "aiven_cloud_name" {
  type    = string
  default = "do-nyc"
}

variable "aiven_maintenance_window_dow" {
  type    = string
  default = "tuesday"
}

variable "aiven_maintenance_window_time" {
  type    = string
  default = "10:00:00"
}

variable "aiven_plan" {
  type    = string
  default = "free-1-5gb"
}

variable "aiven_pg_version" {
  type    = number
  default = 14
}

variable "aiven_project_name" {
  type    = string
}

variable "aiven_termination_protection" {
  type    = bool
  default = false
}



variable "cloudflare_account_id" {
  type        = string
  description = "Acc ID"
}

variable "cloudflare_api_token" {
  type        = string
  description = "Token with permissions defined in workspace to deploy dns, pages"
}

variable "default_ttl" {
  type    = string
  default = 3600
}

variable "domain" {
  type        = string
  description = "Domain used in organization"
}

variable "email" {
  type        = string
  description = "Email used in account"
}

variable "environment" {
  type        = string
  description = "Environment used in organization"
}

variable "github_app_installation_id" {
  type        = string
  description = "This ID not is the ID in URL is internal TFE ID, needs use data"
}

variable "github_infra_repo" {
  type        = string
  description = "Name of repository that host project with Terraform files"
}

variable "github_infra_user" {
  type        = string
  description = "Username or organization slug"
}

variable "github_token" {
  type        = string
  description = "Token to insert vars in action and insert webhooks"
}

variable "github_verification_secret" {
  type        = string
  description = "Secret used to verify webhooks"
}

variable "tfe_personal_token" {
  type        = string
  description = "Personal token, because organization token dont can used"
}

variable "tfe_verification_secret" {
  type        = string
  description = "Secret used to verify webhooks"
}

variable "zulip_webhook_github" {
  type        = string
  description = "Webhook URL to Zulip integration"
}
