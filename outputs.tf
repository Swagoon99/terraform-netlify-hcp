output "site_id" {
  description = "The Netlify Site ID"
  value       = data.netlify_site.site.id
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = data.netlify_site.site.name
}

output "site_url" {
  description = "The live URL of the deployed Netlify site"
  value       = data.netlify_site.site.ssl_url
}
