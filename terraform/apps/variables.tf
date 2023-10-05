variable "org_name" {
  type = string
}

# https://fly.io/docs/reference/regions/
variable "regions" {
  type    = list(string)
  default = ["cdg"]
}
