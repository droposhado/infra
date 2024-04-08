variable "keepers" {
  type = map(string)
}

variable "length" {
  type    = number
  default = 8
}

variable "uppercase" {
  type    = bool
  default = true
}