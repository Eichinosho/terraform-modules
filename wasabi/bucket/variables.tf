variable "users_names" {
    description = "The name of the user for whom the access key is created."
    type        = list(string)
    default     = []
}

variable "group_name" {
    description = "The name of the Wasabi group to be created."
    type        = string
}
variable "users" {
    description = "List of users to be added to the Wasabi group."
    type        = list(string)
    default     = []
}   

variable "policy_name" {
    description = "The name of the Wasabi policy to be created."
    type        = string
}

variable "group_policy" {
    description = "The policy document to attach to the Wasabi group."
    type        = string
}

variable "bucket_name" {
  description   = "Bucket configuration"
  type          = string
}