variable "site_name" {
  description = "The name of the existing Netlify site"
  type        = string
}

variable "deploy_dir" {
  description = "The directory to deploy (local static files)"
  type        = string
  default     = "site"
}
