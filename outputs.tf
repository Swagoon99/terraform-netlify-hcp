output "site_id" {
  description = "The Netlify Site ID"
  value       = data.netlify_site.mynetlifyhug.id
}

output "site_url" {
  description = "The live Netlify site URL"
  value       = data.netlify_site.mynetlifyhug.url
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = data.netlify_site.mynetlifyhug.name
}
