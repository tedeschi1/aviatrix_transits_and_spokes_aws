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
  controller_ip = var.aviatrix_controller_ip
  username = "admin"
  password = var.aviatrix_controller_password
  skip_version_validation = true
  verify_ssl_certificate = false
}
