resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  bucket_prefix = var.bucket_prefix
  acl    = var.acl
 #enables versioning
  versioning {
    enabled = var.versioning_enabled
  }
  #enables Server side encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_master_key_id
        sse_algorithm     = "aws:kms"
      }
    }
  }
   force_destroy = var.force_destroy
   
  tags = merge(
    var.tags_s3,
    var.tags
  )
}

