variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "environment" {
  type        = string
  description = "Environment used in organization"
}

variable "github_infra_repo" {
  type        = string
  description = "Private repository with code"
}

variable "github_verification_secret" {
  type        = string
  description = "Secret used to verify webhooks"
}

variable "maya_flask_app" {
  type        = string
  default     = "maya:create('maya.config.ProductionConfig')"
  description = "Flask app to use in production"
}

variable "maya_gunicorn_access_log_format" {
  type        = string
  description = "Gunicorn format, default value is in gunicorn.py in app"
}

variable "maya_token" {
  type        = string
  description = "Token used in headers to connect on maya"
}

variable "maya_web_bind" {
  type        = string
  default     = "0.0.0.0:5000"
  description = "Used by gunicorn with 0.0.0.0 to allow all external connections and a port number"
}

variable "sabedoria_baserow_token" {
  type        = string
  description = "Token generated in baserow with read permission"
}

variable "sabedoria_baserow_url" {
  type        = string
  default     = "https://api.baserow.io"
  description = "Host to connect a baserow instance, default is oficial"
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_certification_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_course_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_course_review_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_description_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_education_table_id" {
  type = string
}

variable "sabedoria_email" {
  type        = string
  description = "Public email"
}

variable "sabedoria_flask_app" {
  type        = string
  default     = "sabedoria:create('sabedoria.config.ProductionConfig')"
  description = "Flask app to use in production"
}

variable "sabedoria_github" {
  type        = string
  description = "Github username"
}

variable "sabedoria_gunicorn_access_log_format" {
  type        = string
  description = "Gunicorn format, default value is in gunicorn.py in app"
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_interest_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_job_application_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_job_table_id" {
  # tflint-ignore: terraform_unused_declarations
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_job_description_table_id" {
  # tflint-ignore: terraform_unused_declarations
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_job_price_table_id" {
  type = string
}

variable "sabedoria_langs" {
  type        = string
  description = "Enabled langs in app"
}

variable "sabedoria_linkedin" {
  type        = string
  description = "Linkedin username"
}

variable "sabedoria_name" {
  type        = string
  description = "Real name used in CV, site"
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_project_table_id" {
  type = string
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_skill_table_id" {
  type = string
}

variable "sabedoria_site" {
  type        = string
  description = "URL to site without protocol"
}

variable "sabedoria_token" {
  type        = string
  description = "Token used in headers to connect on sabedoria"
}

variable "sabedoria_web_bind" {
  type        = string
  default     = "0.0.0.0:5000"
  description = "Used by gunicorn with 0.0.0.0 to allow all external connections and a port number"
}

# tflint-ignore: terraform_documented_variables
variable "sabedoria_week_study_table_id" {
  type = string
}

variable "tfe_verification_secret" {
  type        = string
  description = "Secret used to verify webhooks"
}
