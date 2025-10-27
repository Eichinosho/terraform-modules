# Wasabi Bucket Terraform Module
This Terraform module creates a Wasabi bucket along with all necessary access configurations.

## Features
- Wasabi bucket creation
- User creation and management
- Access key generation for users
- Access policy creation
- Group creation and membership management
- Policy attachment to group

## Usage

```hcl
module "wasabi_bucket" {
  source = "github.com/Eichinosho/terraform-modules//wasabi/bucket"

  bucket_name  = "my-bucket"
  users_names  = ["user1", "user2"]
  group_name   = "my-group"
  policy_name  = "my-bucket-access-policy"
  group_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject"
        ]
        Resource = [
          "arn:aws:s3:::my-bucket",
          "arn:aws:s3:::my-bucket/*"
        ]
      }
    ]
  })
}
```

## Requirements
| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| dza89/wasabi | 4.3.1 |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket_name | Name of the bucket to be created | `string` | n/a | yes |
| users_names | List of usernames to create | `list(string)` | `[]` | yes |
| group_name | Name of the group to be created | `string` | n/a | yes |
| policy_name | Name of the policy to be created | `string` | n/a | yes |
| group_policy | Policy document to be attached to the group | `string` | n/a | yes |

## Outputs
| Name | Description |
|------|-------------|
| secret | Secret access keys of created users |
| bucket_domain_name | Domain name of the bucket |
| bucket_regional_domain_name | Regional domain name of the bucket |
| region | Region where the bucket was created |

## Notes
- Access key secrets are marked as sensitive and won't be displayed in Terraform output
- Make sure to have Wasabi credentials properly configured before using this module

## License
Copyright (c) 2025 Eichinosho

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this module except in compliance with the License.
You may obtain a copy of the License at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions
and limitations under the License.