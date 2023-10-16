variable "allocated_storage" {
  type = string
}

variable "allow_major_version_upgrade" {
  type    = bool
  default = true
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = true
}

variable "aws_region_default" {
  type        = string
  description = "Default AWS region to create resources"
}

variable "db_name" {
  type = string
}

variable "db_subnet_group_name" {
  type = string
}

variable "deletion_protection" {
  type    = bool
  default = true
}

variable "engine" {
  type    = string
  default = "postgres"
}

variable "engine_version" {
  type    = string
  default = "14"
}

variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "password" {
  type = string
}

variable "publicly_accessible" {
  type    = bool
  default = false
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "tags" {
  type = map(string)
}

variable "vpc_id" {
  type = string
}

variable "username" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list(string)
}
