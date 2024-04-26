variable "keepers" {
  type = map(string)
}

variable "length" {
  type    = number
  default = 128
}

variable "special" {
  type    = bool
  default = true
}