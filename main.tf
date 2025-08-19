terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }
}

provider "netlify" {
  # Token will be read automatically from the NETLIFY_API_TOKEN env variable
  default_team_slug = "shark"
}

# Reference an existing Netlify site
data "netlify_site" "mynetlifyhug" {
  name = "mynetlifyhug" # Replace with your exact Netlify site name
}
