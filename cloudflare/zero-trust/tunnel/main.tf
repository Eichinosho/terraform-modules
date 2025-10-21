resource "cloudflare_zero_trust_tunnel_cloudflared" "this" {
  account_id        = var.cloudflare_account_id
  name              = var.tunnel_name
  tunnel_secret     = var.tunnel_secret
}
