provider "netlify" {
  token = var.netlify_token != "" ? var.netlify_token : getenv("NETLIFY_TOKEN")
}

resource "netlify_site" "site" {
  name          = "hug-ibadan-demo"   # you can also make this a variable
  custom_domain = ""                  # optional
}

resource "netlify_site_deploy" "deploy" {
  site_id = netlify_site.site.id
  dir     = "${path.module}/site"
}
