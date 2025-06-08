output "terraform_state_bucket_name" {
  value = aws_s3_bucket.terraform_state.id
}

output "terraform_state_dynamodb_table" {
  value = aws_dynamodb_table.terraform_state.name
}
