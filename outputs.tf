output "site_id" {
  description = "The unique ID of the Netlify site"
  value       = data.netlify_site.site.id
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = data.netlify_site.site.name
}

output "site_custom_domain" {
  description = "Custom domain if configured, otherwise null"
  value       = length(data.netlify_site.site.custom_domain) > 0 ? data.netlify_site.site.custom_domain : null
}

output "site_domain_aliases" {
  description = "Domain aliases attached to the site"
  value       = data.netlify_site.site.domain_aliases
}
