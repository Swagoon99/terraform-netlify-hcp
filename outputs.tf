output "site_id" {
  description = "The Netlify Site ID"
  value       = netlify_site.mynetlifyhug.id
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = netlify_site.mynetlifyhug.name
}

output "site_url" {
  description = "The live URL of the deployed Netlify site"
  value       = netlify_site.mynetlifyhug.ssl_url
}
