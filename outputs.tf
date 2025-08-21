output "site_id" {
  description = "The unique ID of the Netlify site"
  value       = data.netlify_site.site.id
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = data.netlify_site.site.name
}

output "site_default_url" {
  description = "The default Netlify subdomain for the site"
  value       = "https://${data.netlify_site.site.name}.netlify.app"
}
