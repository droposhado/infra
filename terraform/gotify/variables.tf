variable "default_ttl" {
  type        = string
  default     = 3600
  description = "Time in seconds to update DNS configuration"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "gotify_image" {
  type        = string
  default     = "gotify/server:2.5.0"
  description = "builded image to deploy"
}

variable "gotify_port" {
  type        = string
  default     = 8080
  description = "default port to use service"
}

variable "gotify_regions" {
  type        = set(string)
  default     = ["was"]
  description = "list with regions to deploy services"
}

variable "subdomain" {
  type        = string
  default     = "gotify"
  description = "subdomain used to host service"
}
