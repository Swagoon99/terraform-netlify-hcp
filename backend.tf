terraform {
  backend "remote" {
    organization = "Swagoon"  # Replace with your HCP Terraform org name

    workspaces {
      name = "terraform-netlify-hcp"  # Replace with your workspace name
    }
  }
}
