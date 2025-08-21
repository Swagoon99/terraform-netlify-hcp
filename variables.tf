variable "netlify_token" {
  description = "Netlify API Token"
  type        = string
  sensitive   = true
}

variable "site_name" {
  description = "The name of the existing Netlify site"
  type        = string
}

variable "deploy_dir" {
  description = "Directory to deploy (local static files)"
  type        = string
  default     = "site"
}
