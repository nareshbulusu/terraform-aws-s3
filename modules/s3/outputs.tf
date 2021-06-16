output id {
  value       = aws_s3_bucket.main.id
  sensitive   = false
  description = "display the name of bucket"
  
}
output arn {
  value       = aws_s3_bucket.main.arn
  sensitive   = false
  description = "gives arn of the bucket"
 
}
output bucket_domain_name {
  value       = aws_s3_bucket.main.bucket_domain_name
  description = "The bucket region-specific name"
}
