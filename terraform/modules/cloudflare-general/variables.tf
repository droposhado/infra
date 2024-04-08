variable "account_id" {
  type = string
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "records" {
  type = list(map(string))
}
