output "site_id" {
  description = "The ID of the Netlify site"
  value       = data.netlify_site.site.id
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = data.netlify_site.site.name
}

output "site_ssl_url" {
  description = "The secure (HTTPS) URL of the Netlify site"
  value       = data.netlify_site.site.ssl_url
}
