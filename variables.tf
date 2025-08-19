variable "netlify_token" {
  description = "Netlify Personal Access Token"
  type        = string
  sensitive   = true
  default     = ""  # Terraform will fallback to env var if empty
}
