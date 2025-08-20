provider "netlify" {
  default_team_slug = "swagoon"  
}

# Create a new Netlify site using a variable for the name
resource "netlify_site" "mynetlifyhug" {
  name = var.site_name
}

# Deploy the site (optional: specify dir, repo, etc.)
resource "netlify_deploy" "deploy" {
  site_id = netlify_site.mynetlifyhug.id
  dir     = "site" # Adjust to match your local site folder
  prod    = true
}
