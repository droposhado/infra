variable "aws_access_key_id" {
  type        = string
  description = "Default AWS Access KEY ID"
}

variable "aws_secret_access_key" {
  type        = string
  description = "Default AWS Secret Access KEY"
}

variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "cloudflare_account_id" {
  type        = string
  description = "Acc ID for CF use"
}

variable "cloudflare_api_token" {
  type        = string
  description = "Token with permissions defined in workspace to deploy dns, pages"
}

variable "cluster_ca_certificate" {
  type = string
}

variable "cluster_default_namespace" {
  type = string
}

variable "cluster_endpoint" {
  type = string
}

variable "cluster_token" {
  type = string
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

variable "fly_api_token" {
  type        = string
  description = "fly.io token to deploy and manage resources via tf"
}

variable "github_app_installation_id" {
  type        = string
  description = "This ID not is the ID in URL is internal TFE ID, needs use data"
}

variable "github_furgao_repo" {
  type        = string
  description = "Name of repository that storage furgao"
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

variable "snyk_hmac_key" {
  type        = string
  description = "Secret to check integration with HMAC"
}

variable "snyk_url" {
  type        = string
  description = "Webhook URL to Snyk integration"
}

variable "tfe_personal_token" {
  type        = string
  description = "Personal token, because organization token dont can used"
}

variable "tfe_verification_secret" {
  type        = string
  description = "Secret used to verify webhooks"
}
