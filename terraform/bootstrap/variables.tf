variable "aiven_cloud_name" {
  type = string
  # default     = "do-nyc"
  default     = "aws-us-west-2"
  description = "Cloud and region (<cloud>-<region>) to deploy service instance"
}

variable "aiven_maintenance_window_dow" {
  type        = string
  default     = "tuesday"
  description = "Day of week, to maintenance"
}

variable "aiven_maintenance_window_time" {
  type        = string
  default     = "10:00:00"
  description = "Hour to maintenance in format HH:MM:SS"
}

variable "aiven_plan" {
  type        = string
  default     = "free-1-5gb"
  description = "Default value is free plan, hobbyst is paid plan"
}

variable "aiven_pg_version" {
  type        = number
  default     = 16
  description = "PostgreSQL version to deploy instance, major number only"
}

variable "aiven_project_name" {
  type        = string
  description = "Project name in Aiven"
}

variable "aiven_termination_protection" {
  type        = bool
  default     = false
  description = "Aiven platform protection"
}

# Unused, but important
# variable "b2_default_region" {
#   type        = string
#   default     = "us-east-005"
#   description = "All bucket are created in this region"
# }

variable "default_ttl" {
  type        = string
  default     = 3600
  description = "Time in seconds to update DNS configuration"
}

variable "domain" {
  type        = string
  description = "Domain used in organization"
}

variable "gcp_project_id" {
  type        = string
  description = "Project name slug used in GCP"
}

variable "gcp_region" {
  type        = string
  description = "GCP home region to use"
}

variable "github_infra_public_repo" {
  type        = string
  description = "Name of repository that mirror infra project"
  default     = "infra"
}

variable "github_infra_repo" {
  type        = string
  description = "Name of repository that host project with Terraform files"
}

variable "github_verification_secret" {
  type        = string
  description = "Secret used to verify webhooks"
}

variable "zulip_webhook_github" {
  type        = string
  description = "Webhook URL to Zulip integration"
}
