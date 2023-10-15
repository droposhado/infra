variable "attributes" {
  type        = list(map(string))
  description = "List with attributes to table"
  default     = []
}

variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}
