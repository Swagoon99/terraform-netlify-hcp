output "site_url" {
  value       = data.netlify_site.existing_site.url
  description = "The URL of the existing Netlify site"
}
