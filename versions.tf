# Terraform version
terraform {
  required_version = ">= 1.9.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.6"
    }
  }
}