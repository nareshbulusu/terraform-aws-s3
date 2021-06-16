locals {
  repo_short_name = "s3"
  bucket = var.bucket_name != null ? var.bucket_name : var.bucket_prefix
    tags_s3 = {
    Name                = local.bucket
    Environment         = var.environment
    platform_IAC_Source = "terraform-aws-${local.repo_short_name}"
  }
}

module "kms" {
  count = var.kms_master_key_id == "" ? 1 : 0
  source = "git::https://github.com/nareshbulusu/terraform-aws-kms.git"
  environment = var.environment
  alias = var.kms_key_alias != "" ? var.kms_key_alias : "${local.bucket}-key"
  kms_key_description =  var.kms_key_description != "" ? var.kms_key_description : "${local.bucket}-key"
}

module "s3_bucket" {
  depends_on = [module.kms]
  source = "./modules/s3"
  bucket_name = var.bucket_name
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  versioning_enabled = var.versioning_enabled
  kms_master_key_id = var.kms_master_key_id == "" ? module.kms[0].id : var.kms_master_key_id
  force_destroy = var.force_destroy
  tags_s3 = local.tags_s3
  tags = var.tags
}

