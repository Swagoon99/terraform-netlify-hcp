# Provider configuration
provider "netlify" {
  token = var.netlify_token  # Set via environment variable if left empty
}

# Reference an existing Netlify site
data "netlify_site" "existing_site" {
  name = "mynetlifyhug"  # Replace with the exact name of your site in Netlify
}
