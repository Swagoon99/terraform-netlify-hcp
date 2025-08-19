output "site_id" {
  description = "The Netlify Site ID"
  value       = data.netlify_site.mynetlifyhug.id
}

output "site_admin_url" {
  description = "The Netlify Site Admin URL"
  value       = data.netlify_site.mynetlifyhug.admin_url
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = data.netlify_site.mynetlifyhug.name
}
