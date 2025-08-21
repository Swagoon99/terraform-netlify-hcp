output "site_id" {
  description = "The Netlify Site ID"
  value       = data.netlify_site.site.id
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = data.netlify_site.site.name
}

output "site_domain" {
  description = "The primary domain of the site"
  value       = data.netlify_site.site.custom_domain != "" ? data.netlify_site.site.custom_domain : data.netlify_site.site.domain_aliases[0]
}
