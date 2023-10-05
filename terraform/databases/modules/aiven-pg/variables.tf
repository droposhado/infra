variable "cloud_name" {
  type = string
}

variable "default_db" {
  type = string
}

variable "maintenance_window_dow" {
  type = string
}

variable "maintenance_window_time" {
  type = string
}

variable "plan" {
  type = string
}

variable "pg_version" {
  type = number
}

variable "project_name" {
  type = string
}

variable "service_name" {
  type = string
}

variable "termination_protection" {
  type = bool
}
