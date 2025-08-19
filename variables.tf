variable "netlify_api_token" {
  description = "Netlify API Token (use env variable NETLIFY_API_TOKEN instead of default)"
  type        = string
  sensitive   = true
  default     = "" # Leave blank, env variable will override
}
