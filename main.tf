terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2.3"
    }
  }
}

provider "netlify" {
  token             = var.netlify_api_token
  default_team_slug = "swagoon99"  # replace with your team slug
}

# Reference an existing Netlify site
data "netlify_site" "mynetlifyhug" {
  name = "mynetlifyhug"  # replace with your exact site name
}
