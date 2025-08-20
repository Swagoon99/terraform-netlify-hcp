terraform {
  # Require Terraform CLI version 1.5.0 or newer
  required_version = ">= 1.5.0"

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2.3"
    }
  }

  cloud {
    organization = "swagoon1"

    workspaces {
      name = "terraform-netlify-hcp"
    }
  }
}
