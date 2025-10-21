output "tunnel_id" {
  description = "The ID of the created Cloudflare Zero Trust tunnel."
  value       = cloudflare_zero_trust_tunnel_cloudflared.this.id
}