variable "org_name" {
  type = string
}

variable "app_name" {
  type = string
}

variable "app_name" {
  type = map(string)
  env = {
    PORT = "8080"
    HOST = "0.0.0.0"
  }
}

variable "cpus" {
  type = number
}

variable "custom_domain" {
  type = string
}

variable "image" {
  type = string
}

variable "memorymb" {
  type = string
}

variable "prevent_destroy" {
  type    = bool
  default = true
}

# https://fly.io/docs/reference/regions/
variable "regions" {
  type    = list(string)
  default = ["cdg"]
}

variable "size" {
  type = string
}

