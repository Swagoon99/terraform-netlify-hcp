output "site_url" {
  description = "The live URL of the deployed Netlify site"
  value       = netlify_site.mynetlifyhug.ssl_url
}
