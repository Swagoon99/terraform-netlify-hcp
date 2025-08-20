provider "netlify" {
  default_team_slug = "swagoon"
}

# Deploy key so Netlify can access your GitHub repo
resource "netlify_deploy_key" "deploy_key" {}

# Create a new Netlify site
resource "netlify_site" "mynetlifyhug" {
  name = var.site_name   # site name comes from variables.tf

  repo {
    provider      = "github"
    repo          = "git@github.com:FrederickAdigun/terraform-netlify-hcp.git"
    dir           = "site"
    branch        = "main"
    deploy_key_id = netlify_deploy_key.deploy_key.id
  }
}
