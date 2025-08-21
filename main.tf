provider "netlify" {
  default_team_slug = "swagoon"
}

# Reference the existing Netlify site by name
data "netlify_site" "site" {
  name      = var.site_name
  team_slug = "swagoon"
}
