output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "The ARN of the S3 bucket"
}

output "dynamodb_table_arn" {
  value       = aws_dynamodb_table.terraform_lock.name
  description = "The ARN of the DynamoDB table"
}

