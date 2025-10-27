resource "wasabi_bucket" "bucket" {
  bucket       = var.bucket_name
}

resource "wasabi_user" "users" {
  for_each    = toset(var.users_names)
  name        = each.value
}

resource "wasabi_access_key" "users_keys" {
  for_each    = wasabi_user.users
  user        = each.value.name
}

resource "wasabi_policy" "bucket_policy" {
  name        = var.policy_name
  policy      = var.group_policy
}

resource "wasabi_group" "group" {
  name        = var.group_name
}

resource "wasabi_group_membership" "group_membership" {
  name        = "${var.group_name}-membership"
  group       = wasabi_group.group.name
  users       = var.users_names
}

resource "wasabi_group_policy_attachment" "group_policy" {
  group           = wasabi_group.group.name
  policy_arn      = wasabi_policy.bucket_policy.arn
}