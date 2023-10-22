variable "acl" {
  type    = string
  default = "private"
}

variable "block_public_acls" {
  type    = bool
  default = true
}

variable "block_public_policy" {
  type    = bool
  default = true
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

variable "ignore_public_acls" {
  type    = bool
  default = true
}

variable "index_document" {
  type    = string
  default = "index.html"
}

variable "restrict_public_buckets" {
  type    = bool
  default = true
}

variable "tags" {
  type = map(string)
}

variable "versioning" {
  type    = string
  default = "Enabled"
}
