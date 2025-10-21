# Cloudflare Zero Trust Tunnel - Terraform Module

This module creates a Cloudflare Zero Trust Cloudflared Tunnel.

## Inputs
- `cloudflare_account_id` (string, required): Cloudflare account ID.
- `tunnel_name` (string, required): Name of the tunnel to create.
- `tunnel_secret` (string, required, sensitive): Tunnel secret.

## Outputs
- `tunnel_id`: The ID of the created tunnel.

## Requirements
- Terraform >= 1.0
- Provider `cloudflare` ~> 5.0

## Usage (Git source)
```hcl
module "zt_tunnel" {
  source = "git::ssh://git@your.git.server/your-org/your-repo.git//cloudflare/zero-trust/tunnel?ref=v0.1.0"

  cloudflare_account_id = var.cloudflare_account_id
  tunnel_name           = "my-tunnel"
  tunnel_secret         = var.tunnel_secret
}
```

## Notes for Terraform Registry publication
To publish to the Terraform Registry, ensure:
- The repository is named following the pattern `terraform-<PROVIDER>-<NAME>` or for multi-provider modules a generic name is fine.
- This module lives at the repo root or within a subdirectory; if using subdirectory, the registry will index it if you add a `modules` folder or use the standard layout.
- Add these docs files at the module root: `README.md` (this file), optionally `LICENSE`, `CHANGELOG.md`, `examples/` with a working example.
- Consider adding `versions.tf` with `required_version` and `required_providers` (already present), and outputs/variables documented.

### Example configuration
See `examples/basic` for a minimal usage example.

## License
Copyright (c) 2025 Eichinosho

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this module except in compliance with the License.
You may obtain a copy of the License at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions
and limitations under the License.