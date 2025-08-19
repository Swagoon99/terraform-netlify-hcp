provider "netlify" {
  token = var.netlify_token
}

variable "netlify_token" {
  description = "Netlify Personal Access Token"
  type        = string
  sensitive   = true
}

resource "netlify_site" "site" {
  name = "hug-ibadan-demo"   # or use a variable for uniqueness
  custom_domain = ""          # optional
}

resource "netlify_site_deploy" "deploy" {
  site_id = netlify_site.site.id
  dir     = "${path.module}/site"
}
