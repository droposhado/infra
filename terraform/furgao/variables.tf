# variable "domain" {
#   type        = string
#   description = "Default domain to use in another workspaces"
# }

variable "gcs_bucket" {
  type        = string
  description = "Bucket used to store states"
}

variable "image" {
  type        = string
  default     = "gotify/server:2.4.0"
  description = "builded image to deploy"
}

variable "port" {
  type        = string
  default     = 8080
  description = "default port to use service"
}

variable "regions" {
  type        = set(string)
  default     = ["was"]
  description = "list with regions to deploy services"
}

# variable "subdomain" {
#   type        = string
#   default     = "furgao"
#   description = "subdomain used to host service"
# }
