variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "repository" {
  type        = string
  default     = "https://github.com/cypik/terraform-aws-keypair"
  description = "Terraform current module repo"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`application`."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "managedby" {
  type        = string
  default     = "info@cypik.com"
  description = "ManagedBy, eg 'info@cypik.com'."
}

#Module      : KEY PAIR module variables.
variable "public_key" {
  type        = string
  default     = ""
  description = "Name  (e.g. `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`)."
  sensitive   = true
}

variable "enable_key_pair" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable key pair."
}

#### : PRIVATE KEY
variable "create_private_key_enabled" {
  type        = bool
  default     = false
  description = "Determines whether a private key will be created"
}
variable "private_key_algorithm" {
  type        = string
  default     = "RSA"
  description = "Name of the algorithm to use when generating the private key. Currently-supported values are `RSA` and `ED25519`"
}
