variable "aiven_cloud_name" {
  type = string
  # ohio
  # default = "aws-us-east-2"
  # france
  default = "aws-eu-west-3"
}

variable "default_db" {
  type    = string
  default = "defaultdb"
}

variable "maintenance_window_dow" {
  type    = string
  default = "sunday"
}

variable "maintenance_window_time" {
  type    = string
  default = "06:00:00"
}

variable "aiven_plan" {
  type    = string
  default = "free-1-5gb"
}

variable "aiven_pg_version" {
  type    = number
  default = 15
}

variable "aiven_project_name" {
  type = string
}

variable "termination_protection" {
  type    = bool
  default = false
}
