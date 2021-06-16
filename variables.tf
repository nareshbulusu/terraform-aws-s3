variable "tags" {
  description = "Map of user-defined tags"
  type = map(string)
  default = {}
}
variable bucket_name {
  type        = string
  description = "Name of the S3 bucket"
  default     = null
}
variable bucket_prefix {
  type        = string
  description = "Prefix of the S3 bucket"
  default     = null
}
variable acl {
  type        = string
  default     = "private"
  description = "The canned ACL to apply"
}
variable environment {
  type        = string
  default     = "default"
  description = "Environment name"
}
variable versioning_enabled {
  type        = string
  default     = "false"
  description = "Boolean value to enable the versioning"
}
variable kms_master_key_id {
  type        = string
  default     = ""
  description = "KMS key id for encryption"
}
variable force_destroy {
  type        = bool
  default     = false
  description = "Indicates all object should be deleted from the bucket so that the bucket can be destroyed without error (objects are not recoverable) "
}
variable "kms_key_alias" {
  type = string
  default = ""
  description = "The display name of the alias. The name must start with the word `alias` followed by a forward slash. If not specified, the alias name will be auto-generated."
}
variable "kms_key_description" {
  type        = string
  default     = "KMS master key"
  description = "The description of the key as viewed in AWS console"
}
