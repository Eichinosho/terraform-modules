## Outputs for Wasabi Access Key
output "secret" {
  value = { for k, v in wasabi_access_key.users_keys : k => v.secret }
  sensitive = true
}

## Outputs for Wasabi S3 Bucket Module
output "bucket_domain_name" {
  value = wasabi_bucket.bucket.bucket_domain_name
}
output "bucket_regional_domain_name" {
  value = wasabi_bucket.bucket.bucket_regional_domain_name
}
output "region" {
  value = wasabi_bucket.bucket.region
}
