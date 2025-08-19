output "site_url" {
  description = "Live Netlify site URL"
  value       = netlify_site.site.ssl_url
}
