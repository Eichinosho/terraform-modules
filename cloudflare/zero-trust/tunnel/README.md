# Cloudflare Zero Trust Tunnel - Terraform Module
This Terraform module creates and manages a Cloudflare Zero Trust Cloudflared Tunnel, enabling secure connections between your infrastructure and Cloudflare's edge network.

## Features
- Cloudflare Zero Trust tunnel creation
- Secure tunnel configuration with secret management
- Integration with Cloudflare account
- Automated tunnel provisioning and management

## Usage
```hcl
module "cloudflare_tunnel" {
  source = "github.com/Eichinosho/terraform-modules//cloudflare/zero-trust/tunnel"

  cloudflare_account_id = "your-account-id"
  tunnel_name          = "my-secure-tunnel"
  tunnel_secret        = var.tunnel_secret
}
```

## Requirements
| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| cloudflare | ~> 5.0 |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudflare_account_id | Cloudflare account ID | `string` | n/a | yes |
| tunnel_name | Name of the tunnel to create | `string` | n/a | yes |
| tunnel_secret | Secret for tunnel authentication (sensitive) | `string` | n/a | yes |

## Outputs
| Name | Description |
|------|-------------|
| tunnel_id | The ID of the created tunnel |


## License
Copyright (c) 2025 Eichinosho

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this module except in compliance with the License.
You may obtain a copy of the License at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions
and limitations under the License.