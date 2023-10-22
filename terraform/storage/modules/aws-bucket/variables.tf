variable "acl" {
  type    = string
  default = "private"
}

variable "bucket_name" {
  type = string
}

variable "enable_cors" {
  type    = bool
  default = false
}

variable "error_document" {
  type    = string
  default = "404.html"
}

variable "index_document" {
  type    = string
  default = "index.html"
}

variable "tags" {
  type = map(string)
}

variable "versioning" {
  type    = string
  default = "Enabled"
}


