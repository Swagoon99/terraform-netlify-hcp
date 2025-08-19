output "site_id" {
  description = "The Netlify Site ID"
  value       = data.netlify_site.mynetlifyhug.id
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = data.netlify_site.mynetlifyhug.name
}
