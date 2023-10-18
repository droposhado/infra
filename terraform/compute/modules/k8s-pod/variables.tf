variable "app_name" {
  type = string
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

variable "env" {
  type = map(string)
}

variable "image" {
  type = string
}

variable "ingress_annotation" {
  type    = map(string)
  default = {}
}

variable "replicas" {
  type    = number
  default = 1
}

variable "port" {
  type = string
}

variable "provider_ignore_annotations" {
  type    = list(string)
  default = []
}

variable "provider_ignore_labels" {
  type    = list(string)
  default = []
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
