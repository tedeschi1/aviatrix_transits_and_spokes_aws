terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.11.0"
    }
    aviatrix = {
      source = "aviatrixsystems/aviatrix"
      version = "8.2.0"
    }
  }
}

provider "aviatrix" {
  # Configuration options
  controller_ip = "100.29.2.46"
  username = "admin"
  password = var.aviatrix_controller_password
  skip_version_validation = false
  verify_ssl_certificate = false
}
