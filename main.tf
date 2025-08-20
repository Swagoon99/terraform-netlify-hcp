provider "netlify" {
  default_team_slug = "swagoon"
}

# Reference the existing Netlify site by name
data "netlify_site" "site" {
  name = var.site_name
}

# Example: create a deploy key (if needed)
resource "netlify_deploy_key" "deploy_key" {
  site_id = data.netlify_site.site.id
  title   = "terraform-deploy-key"
}

# Example: trigger a deploy from local directory
resource "netlify_deploy" "deploy" {
  site_id = data.netlify_site.site.id
  dir     = var.deploy_dir
  prod    = true
}
