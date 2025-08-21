output "site_id" {
  description = "The Netlify Site ID"
  value       = data.netlify_site.site.id
}

output "site_name" {
  description = "The Netlify Site Name"
  value       = data.netlify_site.site.name
}

output "site_git_key" {
  description = "The Git deploy key of the Netlify site"
  value       = data.netlify_site.site.git_deploy_key
}

output "site_domain" {
  description = "Custom domain of the Netlify site"
  value       = data.netlify_site.site.custom_domain
}
