output "site_url" {
  value       = "https://${data.netlify_site.existing_site.name}.netlify.app"
  description = "The URL of the existing Netlify site"
}
