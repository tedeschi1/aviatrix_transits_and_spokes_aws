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
  controller_ip = "20.124.177.37"
  username = "admin"
  password = ${{ secrets.AVIATRIX_CONTROLLER_PASSWORD }}
  skip_version_validation = false
  verify_ssl_certificate = false
}
