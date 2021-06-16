# Usage

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags\_s3 | Map of standard tags for S3 module | `map(string)` | n/a | yes |
| acl | The canned ACL to apply | `string` | `"private"` | no |
| bucket\_name | Name of the S3 bucket | `string` | `null` | no |
| bucket\_prefix | Prefix of the S3 bucket | `string` | `null` | no |
| force\_destroy | Indicates all object should be deleted from the bucket so that the bucket can be destroyed without error (objects are not recoverable) | `bool` | `false` | no |
| kms\_master\_key\_id | KMS key id for encryption | `string` | `""` | no |
| tags | Map of user-defined tags | `map(string)` | `{}` | no |
| versioning\_enabled | Boolean value to enable the versioning | `string` | `"false"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | gives arn of the bucket |
| bucket\_domain\_name | The bucket region-specific name |
| id | display the name of bucket |

<!--- END_TF_DOCS --->

