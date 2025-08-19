terraform {
  required_version = ">= 1.5.0"
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 3.4"
    }
  }

  backend "remote" {
    organization = "Swagoon"
    workspaces {
      name = "terraform-netlify-hcp"
    }
  }
}
