variable "cloudflare_account_id" {
  description = "Cloudflare account ID."
  type        = string
}

variable "tunnel_name" {
  description = "Cloudflare tunnel name."
  type        = string
}

variable "tunnel_secret" {
  description = "Cloudflare tunnel secret."
  type        = string
  sensitive   = true
}