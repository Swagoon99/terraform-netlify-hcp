provider "netlify" {
  token             = var.netlify_token
  default_team_slug = "swagoon"
}

# Reference the existing Netlify site by name
data "netlify_site" "site" {
  team_slug = "swagoon"
  name      = var.site_name
}
