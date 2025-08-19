provider "netlify" {
  token = var.netlify_token != "" ? var.netlify_token : getenv("NETLIFY_TOKEN")
}

# Reference an existing Netlify site
data "netlify_site" "existing_site" {
  name = "mynetlifyhug"  # Replace with the actual site name you created in Netlify
}
