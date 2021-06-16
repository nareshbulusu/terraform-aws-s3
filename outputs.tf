output id {
  value       = module.s3_bucket.id
  sensitive   = false
  description = "display the name of bucket"
  
}

output arn {
  value       = module.s3_bucket.arn
  sensitive   = false
  description = "gives arn of the bucket"
 
}

output bucket_domain_name {
  value       = module.s3_bucket.bucket_domain_name
  description = "The bucket region-specific name"
}
